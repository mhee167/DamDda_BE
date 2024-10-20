package org.eightbit.damdda.order.service;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.eightbit.damdda.common.utils.cloud.S3Util;
import org.eightbit.damdda.common.utils.file.ExcelGenerator;
import org.eightbit.damdda.common.utils.validation.ProjectValidator;
import org.eightbit.damdda.member.domain.Member;
import org.eightbit.damdda.order.domain.*;
import org.eightbit.damdda.order.dto.OrderDTO;
import org.eightbit.damdda.order.dto.PaymentPackageDTO;
import org.eightbit.damdda.order.dto.PaymentRewardDTO;
import org.eightbit.damdda.order.dto.ProjectStatisticsDTO;
import org.eightbit.damdda.project.domain.Project;
import org.eightbit.damdda.project.domain.ProjectPackage;
import org.eightbit.damdda.security.util.SecurityContextUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;


@Log4j2
@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements  OrderService{


    private final org.eightbit.damdda.order.repository.OrderRepository orderRepository;
    private final org.eightbit.damdda.order.repository.DeliveryRepository deliveryRepository;
    private final org.eightbit.damdda.order.repository.PaymentRepository paymentRepository;
    private final org.eightbit.damdda.order.repository.SupportingProjectRepository supportingProjectRepository;
    private final org.eightbit.damdda.order.repository.SupportingPackageRepository supportingPackageRepository;
    private final org.eightbit.damdda.project.repository.ProjectRepository projectRepository;
    private final org.eightbit.damdda.member.repository.MemberRepository memberRepository;
    private final org.eightbit.damdda.project.repository.PackageRepository packageRepository;
    private final SecurityContextUtil securityContextUtil;

    private final ProjectValidator projectValidator;
    private final S3Util s3Util;
    private final ExcelGenerator excelGenerator;
    @Value("${s3.url.expiration.minutes}")
    private int s3UrlExpirationMinutes;

    //주문 저장
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @Transactional
    @Override
    public OrderDTO createOrder(OrderDTO orderDTO) {
        ObjectMapper objectMapper = new ObjectMapper();
        // 연관된 엔티티 생성 및 저장
        Delivery delivery = deliveryRepository.save(orderDTO.getDelivery());
        Payment payment = paymentRepository.save(orderDTO.getPayment());

        // 프로젝트 id를 받아서 저장한 후-> 해당 프로젝트와 연결****
        Long projectId = orderDTO.getSupportingProject().getProject().getId();  // Project 엔티티의 ID를 가져옴
        Project project=projectRepository.findById(projectId)
                .orElseThrow(() -> new RuntimeException("프로젝트를 찾을 수 없습니다."));

        //userId로 user찾기****
        Long userId = orderDTO.getSupportingProject().getUser().getId();  // User(Member) 엔티티의 ID를 가져옴

        Member member=memberRepository.getById(userId);


        SupportingProject supportingProject = SupportingProject.builder()
                .user(member)
                .project(project)
                .supportedAt(LocalDateTime.now())
                .payment(payment)
                .delivery(delivery)
                .build();
        supportingProjectRepository.save(supportingProject);


        // 여러 개의 SupportingPackage를 처리할 수 있도록 Set을 사용
        Set<SupportingPackage> supportingPackages = new HashSet<>();


        orderDTO.getPaymentPackageDTO().stream().forEach((sp)-> {

            ProjectPackage projectPackage = packageRepository.findById(sp.getId()).orElseThrow(()->new RuntimeException("해당 패키지를 찾을 수 없습니다."));
            SupportingPackage supportingPackage = null;
            try {
                supportingPackage = SupportingPackage.builder()
                        .packageCount(sp.getCount())
                        .OptionList(objectMapper.writeValueAsString(sp.getRewardList().stream().map(reward -> {
                                            // 첫 번째 배열의 첫 번째 요소만 가져옵니다.
                                            return reward.getSelectOption();
                                        })
                                        .filter(Objects::nonNull)
                                        .collect(Collectors.toList())
                        ))
                        .supportingProject(supportingProject)  // 어떤 프로젝트를 참조하는지 설정
                        .projectPackage(projectPackage)
                        .build();
            } catch (JsonProcessingException e) {
                throw new RuntimeException(e);
            }
            supportingPackageRepository.save(supportingPackage);
            supportingPackages.add(supportingPackage);
        });

        // Order 엔티티 생성 및 저장
        Order order = Order.builder()
                .delivery(delivery)
                .payment(payment)
                .supportingProject(supportingProject)
                .supportingPackage(supportingPackages)
                .createdAt(LocalDateTime.now())
                .build();

        Order savedOrder=orderRepository.save(order);
        orderDTO.setOrderId(savedOrder.getOrderId());
        return orderDTO;
    }

    // userId로 주문 목록을 조회하는 메서드
    @Override
    public List<OrderDTO> getOrdersByUserId(Long userId) {
        List<Order> orders = orderRepository.findAllBySupportingProject_User_Id(userId);  // userId로 주문 리스트 조회
        return orders.stream().map(order -> OrderDTO.builder()
                        .delivery(order.getDelivery())  // 배송 정보
                        .payment(order.getPayment())    // 결제 정보
                        .supportingProject(order.getSupportingProject())  // 후원 프로젝트 정보
                        .paymentPackageDTO(packageEntityToDto(order.getSupportingPackage()))  // 선물 구성 정보
                        .build())
                .collect(Collectors.toList());  // List<OrderDTO>로 변환
    }


    // 특정 주문 정보 가져오기 (orderId로 조회)
    @Override
    public Optional<OrderDTO> getOrderById(Long orderId) {
        return orderRepository.findById(orderId).map(order -> {
            // Order 엔티티를 OrderDTO로 변환
            return OrderDTO.builder()
                    .delivery(order.getDelivery())  // 배송 정보
                    .payment(order.getPayment())    // 결제 정보
                    .supportingProject(order.getSupportingProject())  // 후원 프로젝트 정보
                    .paymentPackageDTO(packageEntityToDto(order.getSupportingPackage()))  // 선물 구성 정보
                    .build();
        });
    }

    // 사용자의 모든 주문 정보 및 결제 정보 가져오기
    @Override
    public List<OrderDTO> getOrdersWithPaymentByUserId(Long userId) {
        // userId로 SupportingProject 가져오기

        List<SupportingProject> supportingProjects = supportingProjectRepository.findAllByUser_Id(userId);

        // 각 후원 프로젝트에 속한 주문을 모두 조회
        return supportingProjects.stream()
                .flatMap(supportingProject -> orderRepository.findAllBySupportingProject(supportingProject).stream())
                .map(order -> OrderDTO.builder()
                        .delivery(order.getDelivery())  // 배송 정보
                        .payment(order.getPayment())    // 결제 정보
                        .supportingProject(order.getSupportingProject())  // 후원 프로젝트 정보
                        .paymentPackageDTO(packageEntityToDto(order.getSupportingPackage()))  // 선물 구성 정보
                        .build())
                .collect(Collectors.toList());
    }

    //결제 완료
    @Override
    public void updatePaymentStatus(Long orderId, String paymentStatus) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new EntityNotFoundException("Order not found"));

        order.getSupportingProject().getPayment().setPaymentStatus(paymentStatus); // 결제 상태 업데이트
        orderRepository.save(order);
    }

    @Transactional
    @Override
    public void updateOrderStatus(Long orderId, String paymentStatus) {
        // 주문 ID로 주문을 조회
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new EntityNotFoundException("Order not found"));
        // 결제 상태 업데이트
        order.getSupportingProject().getPayment().setPaymentStatus(paymentStatus);
        //project의 후원자 수, 후원금액 업데이트
        Long fundsReceive = order.getSupportingPackage().stream().mapToLong(sp-> (long) sp.getPackageCount() *sp.getProjectPackage().getPackagePrice()).sum();
        projectRepository.updateProjectStatus(fundsReceive,order.getSupportingProject().getProject().getId(),1L);

        //package의 salesQuantity,
        order.getSupportingPackage().forEach(sp ->{
            packageRepository.updateQuantities(sp.getPackageCount(),sp.getProjectPackage().getId());
        });

        orderRepository.save(order);  // 변경된 상태를 저장
    }

    @Transactional
    @Override
    public String cancelPayment(Long paymentId, String paymentStatus) {
        // paymentId로 결제를 찾아 해당 결제 정보를 가져옵니다.
        SupportingProject supportingProject = supportingProjectRepository.findByPaymentId(paymentId);
        if (supportingProject!=null) {
            // 결제 상태 업데이트
            if (supportingProject.getPayment() != null) {
                supportingProject.getPayment().setPaymentStatus(paymentStatus); // 결제 상태 업데이트
                supportingProjectRepository.save(supportingProject); // 변경된 상태를 저장
                Order order = orderRepository.findByPaymentId(paymentId);
                Long fundsReceive = order.getSupportingPackage().stream().mapToLong(sp-> (long) sp.getPackageCount() *sp.getProjectPackage().getPackagePrice()).sum();
                fundsReceive = fundsReceive *-1L;
                projectRepository.updateProjectStatus(fundsReceive,order.getSupportingProject().getProject().getId(),-1L);
                return "결제 취소됨";
            } else {
                throw new IllegalArgumentException("Payment not found for this supporting project");
            }
        } else {
            throw new IllegalArgumentException("SupportingProject not found with id: " + paymentId);
        }

    }

    //order 테이블 가져오기
    @Override
    public List<Order> getOrdersBySupportingProject(SupportingProject supportingProject) {
        return orderRepository.findAllBySupportingProject(supportingProject);
    }

    @Override
    public OrderDTO convertToOrderDTO(Order order) {
        return OrderDTO.builder()
                .delivery(order.getDelivery())
                .payment(order.getPayment())
                .supportingProject(order.getSupportingProject())
                .paymentPackageDTO(packageEntityToDto(order.getSupportingPackage()))
                .build();
    }

    //SupportingProject - 모든 주문 정보를 가져오는 서비스 메서드
    @Override
    public List<OrderDTO> getAllOrders() {
        List<Order> orders = orderRepository.findAll();
        return orders.stream().map(order -> {
            // Order 엔티티를 OrderDTO로 변환
            return OrderDTO.builder()
                    .delivery(order.getDelivery())  // 배송 정보
                    .payment(order.getPayment())    // 결제 정보
                    .supportingProject(order.getSupportingProject())  // 후원 프로젝트 정보
                    .paymentPackageDTO(packageEntityToDto(order.getSupportingPackage()))  // 선물 구성 정보
                    .build();
        }).collect(Collectors.toList());
    }

    //member id를 통해 프로젝트 id 가져오기
    @Override
    public Long getUserProjectId(Long memberId) {
        List<Project> projects = orderRepository.findProjectsByMemberId(memberId);
        if (!projects.isEmpty()) {
            return projects.get(0).getId(); // 첫 번째 프로젝트 ID 반환
        }
        return null; // 프로젝트가 없으면 null 반환
    }
    // ProjectStatistics 후원 프로젝트의 시작일, 마감일, 달성률, 총 후원 금액, 후원자 수, 남은 기간을 가져옴
    //프로젝트 통계 정보를 가져오는 서비스 메서드
    @Override
    public ProjectStatisticsDTO getProjectStatistics(Long projectId) {

        //1. 내 프로젝트 ID 찾기
        projectRepository.findById(projectId)
                .orElseThrow(() -> new EntityNotFoundException("Project not found"));

        //2. 총 후원 금액가져오기->
        List<String> packagePrices = supportingPackageRepository.findPackagePricesByProjectId(projectId);

        // String을 Integer로 변환한 후, 합계를 계산
        Long totalAmount = packagePrices.stream()
                .filter(price -> price != null && !price.isEmpty())  // null과 빈 문자열을 체크하여 제외
                .map(Integer::parseInt)  // String을 Integer로 변환
                .mapToLong(Integer::longValue)  // Integer를 Long으로 변환
                .sum();  // 합계 계산

        //3. 후원자 수 가져오기
        Long totalSupporters = supportingPackageRepository.getTotalSupporters(projectId);

        // 4. 남은 기간 계산
        LocalDate today = LocalDate.now();

        // 프로젝트 종료일을 SupportingPackage에서 가져옴
        LocalDateTime endDateLocalDateTime = supportingPackageRepository.findProjectEndDateByProjectId(projectId);
        // LocalDateTime를 LocalDateTime으로 변환 후 LocalDate로 변환
        LocalDateTime endDateTime = endDateLocalDateTime.toLocalDate().atStartOfDay();
        LocalDate endDate = endDateTime.toLocalDate();

        // 종료일과 오늘 날짜 사이의 남은 일수 계산
        long remainingDays = ChronoUnit.DAYS.between(today, endDate);

        // 4. created_at 가져오기
        LocalDateTime createdAtLocalDateTime = supportingPackageRepository.getCreatedAtByProjectId(projectId);

        // 5. target Funding
        Long targetFunding = supportingPackageRepository.getTargetFundingByProjectId(projectId);

        // 5. DTO로 통계 정보를 반환
        return ProjectStatisticsDTO.builder()
                .startDate(createdAtLocalDateTime) // created_at 값을 LocalDateTime로 사용
                .endDate(endDateLocalDateTime)     // endDate 값을 LocalDateTime로 사용
                .totalSupportAmount(totalAmount)
                .totalSupporters(totalSupporters != null ? totalSupporters : 0)
                .remainingDays(Math.max(remainingDays, 0)) // 남은 기간이 음수면 0
                .targetFunding(targetFunding)
                .build();
    }

    @Override
    public String generateUploadAndGetPresignedUrlForSupportersExcel(Long projectId) throws IOException {
        projectValidator.validateMemberIsOrganizer(securityContextUtil.getAuthenticatedMemberId(), projectId);

        // Validate that the projectId is not null
        if (projectId == null) {
            throw new IllegalArgumentException("projectId cannot be null.");
        }

        // Generate the file name for the Excel file
        String fileName = "Supporter_Management_" + projectId;
        String fileType = ".xlsx";

        // Validate that the S3Util instance is not null
        if (s3Util == null) {
            throw new IllegalStateException("S3Util is not initialized.");
        }

        // Validate that the supporters data is not null or empty
        List<Map<String, Object>> supportersData = getSupportersDataForExcel(projectId);
        if (supportersData.isEmpty()) {
            throw new IllegalStateException("Supporters data is null or empty.");
        }

        // Generate the Excel file and check if it is null
        File excelFile = excelGenerator.generateExcelFile(fileName, supportersData);
        if (excelFile == null) {
            throw new IllegalStateException("Failed to generate Excel file.");
        }

        // Validate the generated file before uploading
        if (!excelFile.exists() || excelFile.length() == 0) {
            throw new IllegalStateException("Generated Excel file is either not existing or empty.");
        }

        // Upload the generated Excel file to the S3 bucket
        s3Util.uploadFileToS3(fileName, fileType, excelFile);

        // Return the presigned URL for the uploaded file, with an expiration time
        return s3Util.generatePresignedUrlWithExpiration(fileName, fileType, s3UrlExpirationMinutes);
    }


    private List<Map<String, Object>> getSupportersDataForExcel(Long projectId) {
        // Retrieve the list of orders for the specified project
        List<Order> orders = orderRepository.findAllBySupportingProject_Project_Id(projectId);
        List<Map<String, Object>> data = new ArrayList<>(orders.size());

        // Loop through each order and gather the necessary details
        for (Order order : orders) {
            Map<String, Object> rowData = new HashMap<>();

            // Add order details
            rowData.put("후원번호", order.getOrderId());
            rowData.put("이름", order.getSupportingProject().getUser().getName());
            rowData.put("후원일시", order.getCreatedAt());

            // Add package details
            rowData.put("패키지 이름", joinSupportingPackageDetails(order.getSupportingPackage(), supportingPackage -> String.valueOf(supportingPackage.getProjectPackage().getPackageName())));
            rowData.put("패키지 개수", joinSupportingPackageDetails(order.getSupportingPackage(),
                    supportingPackage -> String.valueOf(supportingPackage.getPackageCount())));
            rowData.put("패키지 가격", joinSupportingPackageDetails(order.getSupportingPackage(),
                    supportingPackage -> String.valueOf(supportingPackage.getProjectPackage().getPackagePrice())));

            // Add option details
            rowData.put("패키지 옵션 정보", joinSupportingPackageDetails(order.getSupportingPackage(), supportingPackage -> String.valueOf(supportingPackage.getOptionList())));

            // Add payment details, if available
            if (order.getPayment() != null) {
                rowData.put("결제 여부", order.getPayment().getPaymentStatus());
            }

            // Add delivery details, if available
            if (order.getDelivery() != null) {
                rowData.put("닉네임", order.getDelivery().getDeliveryName());
                rowData.put("전화번호", order.getDelivery().getDeliveryPhoneNumber());
                rowData.put("이메일", order.getDelivery().getDeliveryEmail());
                rowData.put("주소", order.getDelivery().getDeliveryAddress());
                rowData.put("상세주소", order.getDelivery().getDeliveryDetailedAddress());
                rowData.put("배송 메시지", order.getDelivery().getDeliveryMessage());
                rowData.put("우편번호", order.getDelivery().getDeliveryPostCode());
            }

            // Add the row data to the list
            data.add(rowData);
        }

        // Return the list of data for Excel generation
        return data;
    }

    private String joinSupportingPackageDetails(Set<SupportingPackage> supportingPackages, Function<SupportingPackage, String> mapper) {
        // Convert package details into a single string, joined by commas
        return supportingPackages.stream()
                .map(mapper)
                .collect(Collectors.joining(", "));
    }
    public Set<PaymentPackageDTO>  packageEntityToDto(Set<SupportingPackage> supportingPackage){

        Set<PaymentPackageDTO> paymentPackageDTOs = supportingPackage.stream().map( pac-> {
            return PaymentPackageDTO.builder()
                    .id(pac.getProjectPackage().getId())
                    .name(pac.getProjectPackage().getPackageName())
                    .price(pac.getProjectPackage().getPackagePrice())
                    .count(pac.getPackageCount())
                    .rewardList(pac.getProjectPackage().getPackageRewards().stream().map(pr -> {
                        return PaymentRewardDTO.builder()
                                .rewardName(pr.getProjectReward().getRewardName())
                                .selectOption(pac.getOptionList())
                                .build();
                    }).collect(Collectors.toList()))
                    .build();
        }).collect(Collectors.toSet());
        return paymentPackageDTOs;
    }

}
