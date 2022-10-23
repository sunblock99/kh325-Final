package com.kh.tour.tour.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.member.model.vo.Review;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailReview;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;


public interface TourService {


	int getEventCount(Map<String, String> param, String[] neighbourhood); // 체크박스로 행사 갯수 조회
	
	List<Tour> getEventList(PageInfo pageInfo, Map<String, String> param, String[] neighbourhood); // 체크박스로 행사 리스트 조회

	Tour findByContentId(int contentId); //contentId로 공통+이미지+무장애 조회
	
	List<RepeatInfo> findDetailByContentId(int contentId); //contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복정보 조회
	
	RepeatCourse findCourseDetailByContentId(int contentId); //contentId로 여행코스 소개+반복정보 조회
	
	RepeatHotel findHotelDetailByContentId(int contentId); //contentId로 숙박 소개+반복정보 조회

	List<Tour> getTourList(PageInfo pageInfo, Map<String, String> param, List<String> areaCode, String cat1, List<String> cat2); //체크박스로 관광지 리스트 조회

	int getTourCount(Map<String, String> param, List<String> areaCode, String cat1, List<String> cat2); //체크박스로 관광지 갯수 조회

	DetailTourist getDetailTourist(int contentId);

	DetailCourse getDetailCourse(int contentId);

	DetailHotel getDetailHotel(int contentId);

	DetailCultural getDetailCultural(int contentId);

	DetailEvent getDetailEvent(int contentId);

	DetailSports getDetailSports(int contentId);

	DetailShopping getDetailShopping(int contentId);

	DetailRestaurant getDetailRestaurant(int contentId);

	List<TourImage> getTourImage(int contentId);

	List<DetailReview> getReviewList(int contentId);

	

	
}
