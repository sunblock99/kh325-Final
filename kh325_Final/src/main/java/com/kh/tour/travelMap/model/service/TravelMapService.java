package com.kh.tour.travelMap.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.vo.TravelMap;

public interface TravelMapService {

	List<TravelMap> getTravelMapList(String contentTypeName);
//	List<TravelMap> getTravelMapList(Map<String, String> param);

	Tour findById(int contentId);

}
