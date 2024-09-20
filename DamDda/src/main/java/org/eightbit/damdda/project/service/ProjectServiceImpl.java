package org.eightbit.damdda.project.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.eightbit.damdda.member.domain.Member;
import org.eightbit.damdda.project.domain.*;
import org.eightbit.damdda.project.dto.CategoriesDTO;
import org.eightbit.damdda.project.dto.ProjectDetailDTO;
import org.eightbit.damdda.project.repository.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
@Transactional
public class ProjectServiceImpl implements ProjectService {



//    private final ProjectDocumentRepository projectDocumentRepository;
//    private final ProjectImageRepository projectImageRepository;
    private final ProjectRepository projectRepository;
    private final CategoryService categoryService;
    private final TagService tagService;
    private final ImgService imgService;
    private final DocService docService;
    private final ProjectDocumentRepository projectDocumentRepository;
//    private final TagRepository tagRepository;
//    private final CategoryRepository categoryRepository;
//    private Member member = new Member();


//    public List<Project> getProjectsByIds(List<Long> projectIds) {
//        return projectRepository.findAllById(projectIds);
//    }
    @Override
    public  String delProject(Long projectId){
        Project project = projectRepository.findById(projectId)
                .orElseThrow(() -> new RuntimeException("Project not found"));

        Category delCategory = categoryService.delProjectFromCategory(projectId, project.getCategory().getName());
        List<Tag> delTags = tagService.delProjectFromTags(project);


        Boolean delImg = imgService.deleteImageFiles(project.getProjectImages(), project.getThumbnailUrl());

        docService.deleteDocFiles(projectDocumentRepository.findByProjectId(projectId));

        projectRepository.delete(project);
        return delCategory.getName();
    }

    @Override
    public Long register(ProjectDetailDTO projectDetailDTO,
                         boolean submit,
                         List<MultipartFile> productImages,
                         List<MultipartFile> descriptionImages,
                         List<MultipartFile> docs){

        Category category = categoryService.registerCategory(projectDetailDTO.getCategory());

        List<Tag> tags = tagService.registerTags(projectDetailDTO.getTags());

        List<ProjectImage> projectImages = new ArrayList<>();


        // 1. 프로젝트 생성 및 저장 (ID 생성)
        Project project = Project.builder()
                .tags(tags)
                .category(category)
                .projectImages(projectImages)
                .title(projectDetailDTO.getTitle())
                .description(projectDetailDTO.getDescription())
                .descriptionDetail(projectDetailDTO.getDescriptionDetail())
                .startDate(Timestamp.valueOf(projectDetailDTO.getStartDate()))
                .endDate(Timestamp.valueOf(projectDetailDTO.getEndDate()))
                .targetFunding(projectDetailDTO.getTargetFunding())
                .fundsReceive(0L)
                .supporterCnt(0L)  // 기본값 0
                .viewCnt(0L)       // 기본값 0
                .likeCnt(0L)       // 기본값 0
                .thumbnailUrl("")  // 기본값은 빈 문자열로 설정
                .submitAt(submit ? Timestamp.valueOf(LocalDateTime.now()) : null)  // 제출 시간 설정
                .build();


        // 프로젝트를 저장해 ID를 생성
        project = projectRepository.save(project);
        final Long projectId = project.getId();

        // 2. 카테고리 설정
        category = categoryService.addProjectToCategory(projectId, projectDetailDTO.getCategory());  // 카테고리 등록 서비스 호출
        project.setCategory(category);  // 카테고리 설정


        // 3. 태그 설정
        tags = tagService.addProjectToTags(projectDetailDTO.getTags(), projectId);
        project.setTags(tags);  // 프로젝트에 태그 추가




        imgService.saveImages(project, productImages, descriptionImages);

        docService.saveDocs(project, docs);

        // 5. 최종 프로젝트 저장
        return project.getId();
    }

    @Override
    public Long updateProject(ProjectDetailDTO projectDetailDTO,
                              Long projectId,
                              boolean submit,
                              List<MultipartFile> productImages,
                              List<MultipartFile> descriptionImages,
                              List<MultipartFile> docs){


        Project project = projectRepository.findById(projectId)
                .orElseThrow(() -> new RuntimeException("Project not found"));

        Category delCategory = categoryService.delProjectFromCategory(projectId, project.getCategory().getName());
//        Category newCategory = categoryService.registerCategory(projectDetailDTO.getCategory());
        Category newCategory = categoryService.addProjectToCategory(projectId, projectDetailDTO.getCategory());

        List<Tag> delTags = tagService.delProjectFromTags(project);
//        List<Tag> newTags = tagService.registerTags(projectDetailDTO.getTags());
        List<Tag> newTags = tagService.addProjectToTags(projectDetailDTO.getTags(), projectId);

        Boolean delImg = imgService.deleteImageFiles(project.getProjectImages(), project.getThumbnailUrl());
        try {
            imgService.saveImages(project, productImages, descriptionImages);
        } catch (Exception e) {    }

        docService.deleteDocFiles(projectDocumentRepository.findByProjectId(projectId));

        project.setTags(newTags);
        project.setCategory(newCategory);
        project.setTitle(projectDetailDTO.getTitle());
        project.setDescription(projectDetailDTO.getDescription());
        project.setDescriptionDetail(projectDetailDTO.getDescriptionDetail());
        project.setStartDate(Timestamp.valueOf(projectDetailDTO.getStartDate()));
        project.setEndDate(Timestamp.valueOf(projectDetailDTO.getEndDate()));
        project.setTargetFunding(projectDetailDTO.getTargetFunding());
//        project.setFundsReceive(0L);  // 기본값 0
//        project.setSupporterCnt(0L);  // 기본값 0
//        project.setViewCnt(0L);       // 기본값 0
//        project.setLikeCnt(0L);       // 기본값 0
//        project.setThumbnailUrl("");  // 기본값은 빈 문자열로 설정
        project.setSubmitAt(submit ? Timestamp.valueOf(LocalDateTime.now()) : null);  // 제출 시간 설정


//
//        // 2. 카테고리 설정
//        newCategory = categoryService.addProjectToCategory(projectId, projectDetailDTO.getCategory());  // 카테고리 등록 서비스 호출
//        project.setCategory(newCategory);  // 카테고리 설정
//
//
//        // 3. 태그 설정
//        tags = tagService.addProjectToTags(projectDetailDTO.getTags(), projectId);
//        project.setTags(tags);  // 프로젝트에 태그 추가

        log.info("Registered project " + project);


        docService.saveDocs(project, docs);

        // 5. 최종 프로젝트 저장
        return project.getId();
    }



    @Override
    public Project findById(Long id) {
        Optional<Project> result = projectRepository.findById(id);

        return result.orElseThrow();
    }


}
