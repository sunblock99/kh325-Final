package com.kh.tour.tour.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.mapper.TotalTourMapper;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;



@Service
public class TourServiceImpl implements TourService{
	
	@Autowired
	private TotalTourMapper mapper;


	@Override
	public List<Tour> getEventList(PageInfo pageInfo, Map<String, String> param, String[] neighbourhood){
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue");
		String searchMonth = param.get("searchMonth");

		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("eventKeyword", searchValue);
		}
		if (searchMonth != null && searchMonth.length() > 0) {
			searchMap.put("eventStartDate", searchMonth);
		}
		if(neighbourhood != null) {
			searchMap.put("neighbourhood", neighbourhood);
		}

		System.out.println(searchMap.toString());
		return mapper.selectEventList(rowBounds, searchMap);
	}
	
	@Override 
	public int getEventCount(Map<String, String> param, String[] neighbourhood) { //{searchType=서울, searchValue=아이폰}
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue");
		String searchMonth = param.get("searchMonth");

		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("eventKeyword", searchValue);
		}
		if (searchMonth != null && searchMonth.length() > 0) {
			searchMap.put("eventStartDate", searchMonth);
		}
		if(neighbourhood != null) {
			searchMap.put("neighbourhood", neighbourhood);
		}

		System.out.println(searchMap.toString());
		 
		return mapper.selectEventListCount(searchMap);
	}

	@Override //contentId로 공통 + 이미지 + 무장애 조회
	public Tour findByContentId(int contentId) {
		Tour tour = mapper.selectByContentId(contentId);
		return tour;
	}

	@Override //contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 반복 + 소개 조회 
	public RepeatInfo findDetailByContentId(int contentId) {
		RepeatInfo repeatInfo = mapper.selectDetailByContentId(contentId);
		return repeatInfo;
	}
	
	@Override // contentId로 여행코스 소개+반복 조회하기
	public RepeatCourse findCourseDetailByContentId(int contentId) {
		RepeatCourse repeatCourse = mapper.selectRepeatCourseByContentId(contentId);
		return repeatCourse;
	}

	@Override // contentId로 숙박 소개+반복 조회하기  
	public RepeatHotel findHotelDetailByContentId(int contentId) {
		RepeatHotel repeatHotel = mapper.selectRepeatHotelByContentId(contentId);
		return repeatHotel;
	}

	@Override
	public List<Tour> getTourList(PageInfo pageInfo, Map<String, String> param, List<String> areaCode, String cat1,
			List<String> cat2) {
		return null;
	}

	@Override
	public int getTourCount(Map<String, String> param, List<String> areaCode, String cat1, List<String> cat2) {
		return 0;
	}


	

	
	
}
