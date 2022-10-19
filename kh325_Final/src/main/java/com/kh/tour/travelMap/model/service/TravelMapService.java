package com.kh.tour.travelMap.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.vo.Tour;

public interface TravelMapService {

	List<Tour> getTravelMapList(Map<String, String> param);

	Tour findById(int contentId);

}
