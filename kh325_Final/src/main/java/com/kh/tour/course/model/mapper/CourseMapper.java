package com.kh.tour.course.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourseCreate;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.RecommCourseDetail;
import com.kh.tour.course.model.vo.RecommCourseImage;
import com.kh.tour.course.model.vo.RecommCourseRev;
import com.kh.tour.tour.model.vo.Tour;

@Mapper
public interface CourseMapper {

	// 나만의코스 리스트
	
	// 추천코스 리스트
	List<Tour> selectAllCourse();
	
	Tour selectCourseByContentId(int contentId);
	
	// 추천코스 소개정보
	DetailCourse selectDetailByContentId(int contentId);
	
	
	// 코스 메인
	List<MainMyCourse> selectSortedByRevStar();
	List<MainRecommCourse> sortedByRevStar();
	List<MyCourseDetail> selectMyDetailByContentId(int myCourseNo);
	
	
	// 나의코스 검색
	List<MyCourseSearch> searchMyCourse(RowBounds rowBounds, Map<String, String> map);
	List<MyCourseSearch> indexMyCourseDetail(Map<String, String> map);
	
	
	// 나의 코스 디테일
	List<MyCourseSearch> detailMyCourse(int myCourseNo);
	// 나의코스디테일 리뷰
	List<MyCourseRev> detailMyCourseRev(int myCourseNo);
	// 나의 코스 이미지
	List<MyCourseImage> detailMyCourseImage(int myCourseNo);
	
	
	//추천코스 검색
	List<MainRecommCourse> searchRecommCourse(RowBounds rowBounds, Map<String, String> map);
	int countSearchRecommCourse(Map<String, String> map);
	

	// 나의 코스 디테일
	List<RecommCourseDetail> detailRecommCourse(int contentId);
	// 추천 코스 디테일 이미지
	List<RecommCourseImage> detailRecommCourseImage(int contentId);
	// 추천 코스 디테일 리뷰
	List<RecommCourseRev> detailRecommCourseRev(int contentId);
	
	
	// 코스 만들기
	int createCourse(MyCourseCreate myCourseCreate);
	
	// 코스 삭제하기	
	int deleteCourse(int myCourseNo);
	
	// 코스 디테일 전체 삭제하기	
	int deleteCourseDetail(int myCourseNo);
	
	// 코스 편집하기 
	int updateCourse(MyCourseCreate myCourseCreate);
	
	// 코스 컨텐츠 하나 추가하기
	int insertContent(@Param("myCourseNo")int myCourseNo, @Param("contentId")int contentId, @Param("myCourseSn")int myCourseSn);
	
	// 코스 컨텐츠 하나 삭제하기
	int deleteContent(int myCourseDetailNo);
	
	// 코스 순서 올리기
	int ascent(@Param("changedSn")int changedSn, @Param("myCourseDetailNo")int myCourseDetailNo);
	
	// 코스 순서 내리기
	int descent(@Param("changedSn")int changedSn, @Param("myCourseDetailNo")int myCourseDetailNo);
	
	// 마이페이지용 나의코스정보 불러오기
	List<MyCourseSearch> selectForMyPage(@Param("userNo")int userNo, @Param("myCourseNo")int myCourseNo);
	
	List<MyCourseSearch> selectForEdit(int myCourseDetailNo);
	
	List<MyCourseSearch> selectForCreate();
	
	List<MyCourseSearch> selectForMyPageList(@Param("userNo")int userNo);
	
	//코스디테일페이지 리뷰 남기기
    int insertMyCourseRev(MyCourseRev myCourseRev);
}
	
