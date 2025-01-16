# 🌍 DamDda_BE

## 📝 프로젝트 소개
### "한국의 가치와 문화를 지켜내는 펀딩 플랫폼"
다양한 아이디어를 가진 제작자들과 한국 문화를 사랑하는 후원자들을 연결하는 플랫폼입니다. 우리는 한국의 문화적 가치를 전 세계에 알리고자 하는 창작자들을 위해 AI 기반의 프로젝트 문구 추천 시스템과 효율적인 협업 도구를 제공합니다. 소통 가능한 환경에서 제작자와 후원자가 직접 교류하며, 한국 문화 콘텐츠의 다양성을 높이고 창작자들의 아이디어가 실현될 수 있도록 지원합니다.

## ⏰ 개발 기간
2024.09.02 ~ 2024.10.25

## ✋ 팀원 구성
![image](https://github.com/user-attachments/assets/4accbd42-4a8e-4536-89c5-d9e58c09cbcb)

## 🔧 개발 환경

- Backend: Java, Spring Boot, Spring Security, Spring Data JPA
- Database: MySQL, Redis
- Frontend: React
- Infra: Naver Cloud Platform, Jenkins, Docker
- External API: TossPayment, Google Translate API, HyperClovaX


# ⚙ 서비스 아키텍쳐
![image](https://github.com/user-attachments/assets/5f5937b1-31a6-4a44-9a9e-80f62fa23d6f)

# 📔 폴더 구조
```plaintext
|   .gitattributes
|   .gitignore
|   build.gradle
|   Dockerfile
|   gradlew
|   gradlew.bat
|   settings.gradle
|   tree.txt
|   
+---.idea
|       .gitignore
|       gradle.xml
|       misc.xml
|       vcs.xml
|       workspace.xml
|       
+---docs
|       DATABASE_SETTING.md
|       DBeaver_create_database.png
|       README.md
|       
+---gradle
|   \---wrapper
|           gradle-wrapper.jar
|           gradle-wrapper.properties
|           
\---src
    +---main
    |   +---java
    |   |   \---org
    |   |       \---eightbit
    |   |           \---damdda
    |   |               |   DamDdaApplication.java
    |   |               |   
    |   |               +---admin
    |   |               |   +---domain
    |   |               |   |       Admin.java
    |   |               |   |       AdminApproval.java
    |   |               |   |       CarouselImage.java
    |   |               |   |       
    |   |               |   +---repository
    |   |               |   |       AdminApprovalRepository.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           AdminApprovalService.java
    |   |               |           AdminApprovalServiceImpl.java
    |   |               |           
    |   |               +---common
    |   |               |   +---config
    |   |               |   |       ModelMapperConfig.java
    |   |               |   |       S3ClientConfig.java
    |   |               |   |       
    |   |               |   +---exception
    |   |               |   |   +---custom
    |   |               |   |   |       UnauthorizedAccessException.java
    |   |               |   |   |       
    |   |               |   |   \---handler
    |   |               |   |           GlobalExceptionHandler.java
    |   |               |   |           
    |   |               |   \---utils
    |   |               |       +---cloud
    |   |               |       |       S3Util.java
    |   |               |       |       
    |   |               |       +---file
    |   |               |       |       ExcelGenerator.java
    |   |               |       |       
    |   |               |       +---logging
    |   |               |       |       LoggingAspect.java
    |   |               |       |       
    |   |               |       \---validation
    |   |               |               CreateValidation.java
    |   |               |               MemberValidator.java
    |   |               |               ProjectValidator.java
    |   |               |               UpdateValidation.java
    |   |               |               
    |   |               +---generativeai
    |   |               |   +---client
    |   |               |   |       AIContentGenerationClient.java
    |   |               |   |       
    |   |               |   +---config
    |   |               |   |       AIWebClientConfig.java
    |   |               |   |       
    |   |               |   +---controller
    |   |               |   |       GenerativeAIController.java
    |   |               |   |       
    |   |               |   +---dto
    |   |               |   |       AIProjectDescriptionDTO.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           GenerativeAIService.java
    |   |               |           GenerativeAIServiceImpl.java
    |   |               |           
    |   |               +---member
    |   |               |   +---controller
    |   |               |   |       MemberController.java
    |   |               |   |       
    |   |               |   +---domain
    |   |               |   |       Member.java
    |   |               |   |       
    |   |               |   +---dto
    |   |               |   |       MemberDTO.java
    |   |               |   |       MemberSearchDTO.java
    |   |               |   |       PasswordDTO.java
    |   |               |   |       RegisterDTO.java
    |   |               |   |       
    |   |               |   +---repository
    |   |               |   |       LoginRepository.java
    |   |               |   |       MemberRepository.java
    |   |               |   |       RegisterRepository.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           LoginService.java
    |   |               |           LoginServiceImpl.java
    |   |               |           MemberService.java
    |   |               |           MemberServiceImpl.java
    |   |               |           RegisterService.java
    |   |               |           RegisterServiceImpl.java
    |   |               |           
    |   |               +---noticeandqna
    |   |               |   +---controller
    |   |               |   |       NoticeController.java
    |   |               |   |       QnaQuestionController.java
    |   |               |   |       QnaReplyController.java
    |   |               |   |       
    |   |               |   +---domain
    |   |               |   |       Notice.java
    |   |               |   |       QnaQuestion.java
    |   |               |   |       QnaReply.java
    |   |               |   |       
    |   |               |   +---dto
    |   |               |   |       BaseDTO.java
    |   |               |   |       NoticeDTO.java
    |   |               |   |       QnaQuestionDTO.java
    |   |               |   |       QnaReplyDTO.java
    |   |               |   |       
    |   |               |   +---repository
    |   |               |   |       NoticeRepository.java
    |   |               |   |       QnaQuestionRepository.java
    |   |               |   |       QnaReplyRepository.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           NoticeService.java
    |   |               |           NoticeServiceImpl.java
    |   |               |           QnaQuestionService.java
    |   |               |           QnaQuestionServiceImpl.java
    |   |               |           QnaReplyService.java
    |   |               |           QnaReplyServiceImpl.java
    |   |               |           
    |   |               +---order
    |   |               |   +---controller
    |   |               |   |       OrderController.java
    |   |               |   |       PaymentController.java
    |   |               |   |       
    |   |               |   +---domain
    |   |               |   |       Delivery.java
    |   |               |   |       KakaoPayInterface.java
    |   |               |   |       Order.java
    |   |               |   |       Payment.java
    |   |               |   |       SupportingPackage.java
    |   |               |   |       SupportingProject.java
    |   |               |   |       
    |   |               |   +---dto
    |   |               |   |       Amount.java
    |   |               |   |       ApprovedCancelAmount.java
    |   |               |   |       CancelAvailableAmount.java
    |   |               |   |       CanceledAmount.java
    |   |               |   |       KakaoApproveResponse.java
    |   |               |   |       KakaoCancelResponse.java
    |   |               |   |       KakaoReadyResponse.java
    |   |               |   |       OrderDTO.java
    |   |               |   |       PaymentPackageDTO.java
    |   |               |   |       PaymentRewardDTO.java
    |   |               |   |       ProjectStatisticsDTO.java
    |   |               |   |       SupportingProjectDTO.java
    |   |               |   |       TossRequest.java
    |   |               |   |       TossResponse.java
    |   |               |   |       
    |   |               |   +---repository
    |   |               |   |       DeliveryRepository.java
    |   |               |   |       OrderRepository.java
    |   |               |   |       PaymentRepository.java
    |   |               |   |       SupportingPackageRepository.java
    |   |               |   |       SupportingProjectRepository.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           KakaoPayService.java
    |   |               |           KakaoPayServiceImpl.java
    |   |               |           OrderService.java
    |   |               |           OrderServiceImpl.java
    |   |               |           SupportingProjectService.java
    |   |               |           SupportingProjectServiceImpl.java
    |   |               |           TossPayService.java
    |   |               |           TossPayServiceImpl.java
    |   |               |           
    |   |               +---project
    |   |               |   +---controller
    |   |               |   |       CollaborationController.java
    |   |               |   |       FileApiController.java
    |   |               |   |       PackageController.java
    |   |               |   |       ProjectController.java
    |   |               |   |       
    |   |               |   +---domain
    |   |               |   |       Category.java
    |   |               |   |       Collaboration.java
    |   |               |   |       LikedProject.java
    |   |               |   |       PackageRewards.java
    |   |               |   |       Project.java
    |   |               |   |       ProjectDocument.java
    |   |               |   |       ProjectImage.java
    |   |               |   |       ProjectImageType.java
    |   |               |   |       ProjectPackage.java
    |   |               |   |       ProjectRewards.java
    |   |               |   |       Tag.java
    |   |               |   |       
    |   |               |   +---dto
    |   |               |   |       CollaborationDetailDTO.java
    |   |               |   |       CollaborationDTO.java
    |   |               |   |       DailySupporting.java
    |   |               |   |       FileDTO.java
    |   |               |   |       MetaDTO.java
    |   |               |   |       PackageDTO.java
    |   |               |   |       PageRequestDTO.java
    |   |               |   |       PageResponseDTO.java
    |   |               |   |       ProjectBoxDTO.java
    |   |               |   |       ProjectBoxHostDTO.java
    |   |               |   |       ProjectDetailDTO.java
    |   |               |   |       ProjectDetailHostDTO.java
    |   |               |   |       ProjectRegisterDetailDTO.java
    |   |               |   |       ProjectResponseDetailDTO.java
    |   |               |   |       RewardDTO.java
    |   |               |   |       TagDTO.java
    |   |               |   |       WritingProjectDTO.java
    |   |               |   |       
    |   |               |   +---repository
    |   |               |   |       CategoryRepository.java
    |   |               |   |       CollaborationRepository.java
    |   |               |   |       LikedProjectRepository.java
    |   |               |   |       PackageRepository.java
    |   |               |   |       PackageRewardsRepository.java
    |   |               |   |       ProjectDocumentRepository.java
    |   |               |   |       ProjectImageRepository.java
    |   |               |   |       ProjectImageTypeRepository.java
    |   |               |   |       ProjectRepository.java
    |   |               |   |       ProjectRepositoryCustom.java
    |   |               |   |       ProjectRepositoryImpl.java
    |   |               |   |       RewardRepository.java
    |   |               |   |       TagRepository.java
    |   |               |   |       
    |   |               |   \---service
    |   |               |           CollaborationService.java
    |   |               |           CollaborationServiceImpl.java
    |   |               |           DocService.java
    |   |               |           DocServiceImpl.java
    |   |               |           ImgService.java
    |   |               |           ImgServiceImpl.java
    |   |               |           LikedProjectService.java
    |   |               |           LikedProjectServiceImpl.java
    |   |               |           PackageService.java
    |   |               |           PackageServiceImpl.java
    |   |               |           ProjectService.java
    |   |               |           ProjectServiceImpl.java
    |   |               |           TagService.java
    |   |               |           TagServiceImpl.java
    |   |               |           
    |   |               \---security
    |   |                   +---config
    |   |                   |       SecurityConfig.java
    |   |                   |       
    |   |                   +---filter
    |   |                   |       JwtAuthenticationFilter.java
    |   |                   |       LoginFilter.java
    |   |                   |       
    |   |                   +---jwt
    |   |                   |       AuthEntryPoint.java
    |   |                   |       JwtService.java
    |   |                   |       
    |   |                   +---user
    |   |                   |       AccountCredentials.java
    |   |                   |       User.java
    |   |                   |       UserDetailsServiceImpl.java
    |   |                   |       
    |   |                   \---util
    |   |                           SecurityContextUtil.java
    |   |                           
    |   \---resources
    |       |   application.properties
    |       |   external-credentials.properties
    |       |   
    |       \---data
    |               approval.sql
    |               categories.sql
    |               collaboration.sql
    |               deliveries.sql
    |               liked_projects.sql
    |               members.sql
    |               notices.sql
    |               orders.sql
    |               package.sql
    |               payments.sql
    |               projects.sql
    |               project_documents.sql
    |               project_images.sql
    |               project_image_type.sql
    |               project_tag.sql
    |               project_update.sql
    |               tags.sql
    |               
    \---test
        \---java
            \---org
                \---eightbit
                    \---damdda
                            DamDdaApplicationTests.java
```
                            
## ⭐ 주요 기능

### - 메인 페이지

![image](https://github.com/user-attachments/assets/b996b03e-8e44-4308-815b-2a9654b8200e)
번역 기능 

### - 로그인/회원가입 페이지
![image](https://github.com/user-attachments/assets/0f357669-f256-4a43-a574-ab8379b1b7a0)

### - 마이 페이지
![image](https://github.com/user-attachments/assets/e7cbcc7c-72de-48c8-b1eb-6e015eac47fc)
내가 후원한 프로젝트 
![image](https://github.com/user-attachments/assets/60e708d7-b19b-48f4-936e-f015dbf49ec7)
나의 프로젝트
![image](https://github.com/user-attachments/assets/9c50d2b6-7b0f-4f5e-be80-6855a557444a)
관심 프로젝트 조회

### - 프로젝트 등록 페이지
![image](https://github.com/user-attachments/assets/8a8d60a7-4f0c-49c2-8f88-05ec04feabb8)
![image](https://github.com/user-attachments/assets/261a0b5f-a3c2-43cf-b523-9ce6ef910f35)
![image](https://github.com/user-attachments/assets/53ddd7f7-780a-479d-bb9e-8458bd0480e5)
### - 협업 하기 모달
![image](https://github.com/user-attachments/assets/067b0e02-3da2-49e0-8bc9-5f2547bbf37b)

### - 주문 결제 페이지
![image](https://github.com/user-attachments/assets/ad7b171b-2e3a-4383-9576-5d0ff17747ff)
![image](https://github.com/user-attachments/assets/927b9ed9-e0e0-4700-825a-749b914c4a6c)
![image](https://github.com/user-attachments/assets/1bf79da2-4bdd-46e8-a755-940c7fa7eca6)


### - 생성형 AI / 추천 시스템
![image](https://github.com/user-attachments/assets/dd7444f6-2192-435d-a0e4-fed43f38498d)
![image](https://github.com/user-attachments/assets/77c489e6-9abe-452a-9b7c-bc3572bb903a)


- 관리자 페이지
![image](https://github.com/user-attachments/assets/6f037323-59df-48b7-bde5-30fce943b4de)


