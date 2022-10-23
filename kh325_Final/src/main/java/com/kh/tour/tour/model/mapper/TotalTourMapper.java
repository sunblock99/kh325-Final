package com.kh.tour.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;



@Mapper
public interface TotalTourMapper {
	
	List<Tour> selectEventList(RowBounds rowBounds, Map<String, Object> map); // 검색어 + 월 + 지역코드로 행사 조회하기
	
	int selectEventListCount(Map<String, Object> searchMap); // 검색어 + 월 + 지역코드로 조회된 행사 갯수
	
	Tour selectByContentId(int contentId); // contentId로 공통정보 + 이미지 + 무장애 상세내용 조회하기 
	
	List<RepeatInfo> selectDetailByContentId(int contentId); //  contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복 조회하기 
	
	RepeatCourse selectRepeatCourseByContentId(int contentId); // contentId로 여행코스 소개+반복 조회하기  
	
	RepeatHotel selectRepeatHotelByContentId(int contentId); // contentId로 숙박 소개+반복 조회하기  

	DetailTourist detailTourist(int contentId);

	DetailCourse detailCourse(int contentId);

	DetailHotel detailHotel(int contentId);

	DetailCultural detailCultural(int contentId);

	DetailEvent detailEvent(int contentId);

	DetailSports detailSports(int contentId);

	DetailShopping detailShopping(int contentId);

	DetailRestaurant detailRestaurant(int contentId);

	List<TourImage> tourImage(int contentId);
	
	



}
