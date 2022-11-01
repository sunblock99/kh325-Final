package com.kh.tour.course.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourse;
import com.kh.tour.course.model.vo.MyCourseCreate;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.MyCourseSearchIndex;
import com.kh.tour.course.model.vo.RecommCourseDetail;
import com.kh.tour.course.model.vo.RecommCourseImage;
import com.kh.tour.course.model.vo.RecommCourseRev;
import com.kh.tour.tour.model.vo.Tour;

public interface CourseService {

	
	List<Tour> findAllCourse();
	
	Tour findCourseByContentId(int contentId);
	
	DetailCourse findDetailByContentId(int contentId);
	
	
	// 메인용
	List<MainMyCourse> findSortedByRevStar();
	List<MainRecommCourse> SortedByRevStar();
	List<MyCourseDetail> findMyDetailByContentId(int myCourseNo);
	
	
	// 나의코스용
	List<MyCourseSearch> findMyCourse(PageInfo pageInfo, Map<String, String> map);
	List<MyCourseSearch> countMyCourse(Map<String, String> map);
	List<MyCourseSearch> countMyCoursebyIndex(Map<String, String> map);
	
	
	// 나의코스 디테일
	List<MyCourseSearch> getDetailMyCourse(int myCourseNo);
	// 나의코스 리뷰
	List<MyCourseRev> getMyCourseRev(int myCourseNo);
	// 나의코스 이미지
	List<MyCourseImage> getMyCourseImage(int myCourseNo);
	
	// 추천코스용
	List<MainRecommCourse> findRecommCourse(PageInfo pageInfo, Map<String, String> map);
	int countRecommCourse(Map<String, String> map);
	// 추천코스 디테일
	List<RecommCourseDetail> getDetailRecommCourse(int contentId);
	// 추천코스 디테일 이미지
	List<RecommCourseImage> getRecommCourseImage(int contentId);
	// 추천코스 디테일 리뷰
	List<RecommCourseRev> getRecommCourseRev(int contentId);
	
	
	
	// 코스만들기
	// 코스만들기
	int createCourse(MyCourseCreate myCourseCreate);
	// 코스 삭제하기
	int deleteCourse(int myCourseNo);
	// 코슫 디테일 전첵 삭제하기
	int deleteCourseDetail(int myCourseNo);
	// 코스 편집하기
	int updateCourse(MyCourseCreate myCourseCreate);
	// 코스 컨텐츠 하나 추가하기
	int insertContent(int myCourseNo, int contentId, int myCourseSn);
	// 코스 컨텐츠 하나 삭제하기
	int deleteContent(int myCourseDetailNo);
	// 코스 순서 올리기
	int ascent(int changedSn, int myCourseDetailNo);
	// 코스 순서 내리기
	int descent(int changedSn, int myCourseDetailNo);
	
	List<MyCourseSearch> getForMyPage(int userNo, int myCourseNo);
	List<MyCourseSearch> getForEdit(int myCourseDetailNo);
	List<MyCourseSearch> getForCreate();
	List<MyCourseSearch> getForMyPageList(@Param("userNo")int userNo);
	
	//코스디테일페이지 리뷰남기기
    int writeMyCourseRev(MyCourseRev myCourseRev);

}
