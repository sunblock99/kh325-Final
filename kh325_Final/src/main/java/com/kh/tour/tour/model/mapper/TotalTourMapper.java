package com.kh.tour.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.vo.Category;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailReview;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.EventHighLike;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;
import com.kh.tour.tour.model.vo.TourLike;



@Mapper
public interface TotalTourMapper {
	
	List<Tour> selectEventList(RowBounds rowBounds, Map<String, Object> map); // 검색어 + 월 + 지역코드로 행사 조회하기
	
	int selectEventListCount(Map<String, Object> searchMap); // 검색어 + 월 + 지역코드로 조회된 행사 갯수
	
	Tour selectByContentId(int contentId); // contentId로 공통정보 + 이미지 + 무장애 상세내용 조회하기 
	
	List<RepeatInfo> selectDetailByContentId(int contentId); //  contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복 조회하기
	
	int selectTourListCount(Map<String, Object> searchMap); // 관광지 체크박스로 조회된 관광지 리스트 갯수

	List<Tour> selectTourList(RowBounds rowBound1, Map<String, Object> searchMap); // 관광지 체크박스로 조회된 관광지 리스트 갯수

	List<TourLike> selectTourLikeList(int userNo); // userNo로 찜목록 전체 조회하기

	List<Category> selectCat1List(String cat1); 
	
	DetailTourist detailTourist(int contentId);

	DetailCourse detailCourse(int contentId);

	DetailHotel detailHotel(int contentId);

	DetailCultural detailCultural(int contentId);

	DetailEvent detailEvent(int contentId);

	DetailSports detailSports(int contentId);

	DetailShopping detailShopping(int contentId);

	DetailRestaurant detailRestaurant(int contentId);

	List<TourImage> tourImage(int contentId);

	List<DetailReview> getReviewList (int contentId);

	int insertReview(DetailReview detailReview);

	List<Tour> calendarList(RowBounds rowBounds, Map<String, Object> searchMap);

	int getCalendarCount(Map<String, Object> searchMap);

	int tourLikeInsert(Map<String, Object> searchMap);

	List<EventHighLike> getEventHighLike(); //찜갯수가 높은순대로 행사목록 가져오기

}
