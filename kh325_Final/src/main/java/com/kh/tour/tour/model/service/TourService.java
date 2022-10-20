package com.kh.tour.tour.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;


public interface TourService {


	int getEventCount(Map<String, String> param, String[] neighbourhood); // 체크박스로 행사 갯수 조회
	
	List<Tour> getEventList(PageInfo pageInfo, Map<String, String> param, String[] neighbourhood); // 체크박스로 행사 리스트 조회

	Tour findByContentId(int contentId); //contentId로 공통+이미지+무장애 조회
	
	RepeatInfo findDetailByContentId(int contentId); //contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복정보 조회
	
	RepeatCourse findCourseDetailByContentId(int contentId); //contentId로 여행코스 소개+반복정보 조회
	
	RepeatHotel findHotelDetailByContentId(int contentId); //contentId로 숙박 소개+반복정보 조회

	List<Tour> getTourList(PageInfo pageInfo, Map<String, String> param, List<String> areaCode, String cat1, List<String> cat2); //체크박스로 관광지 리스트 조회

	int getTourCount(Map<String, String> param, List<String> areaCode, String cat1, List<String> cat2); //체크박스로 관광지 갯수 조회

	

	
}
