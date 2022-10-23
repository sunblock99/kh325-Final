package com.kh.tour.course.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourse;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.MyCourseSearchIndex;
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
}
