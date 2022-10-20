package com.kh.tour.tour.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.vo.Tour;


public interface TourService {


	int getEventCount(Map<String, String> param, String[] neighbourhood);
	
	Tour findByContentId(int contentId);

	List<Tour> getEventList(PageInfo pageInfo, Map<String, String> param, String[] neighbourhood);

	

	
}
