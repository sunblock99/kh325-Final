package com.kh.tour.travelMap.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.vo.CourseMap;
import com.kh.tour.travelMap.model.vo.TravelMap;

public interface TravelMapService {

	List<TravelMap> getTravelMapList(String contentTypeName);
	List<TravelMap> getTravelMapList(int contentTypeId);

	Tour findById(int contentId);

//	List<CourseMap> getCourseMapList(Map<String, String> param);
//	List<CourseMap> getCourseMapDetailList(Map<String, String> param);

	List<TravelMap> getCourseMapList();
//	List<CourseMap> getCourseMapList();

//	List<CourseMap> getCourseMapDetailList(int contentId);
//	List<CourseMap> getCourseMapList(int contentId);

	TravelMap getCourseByNo(int contentId);
//	CourseMap getCourseByNo(int contentId);

//	List<CourseMap> getCourseMapList(String contentTypeName);

}
