package com.kh.tour.travelMap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.vo.CourseMap;
import com.kh.tour.travelMap.model.vo.TravelMap;

@Mapper
public interface TravelMapMapper {
	List<TravelMap> selectTravelMapList(String contentTypeName);
	List<TravelMap> selectTravelMapList(int contentTypeId);
	Tour selectTourById(int contentId);
	
//	CourseMap selectCourseByNo(int contentId);
	TravelMap selectCourseByNo(int contentId);
//	List<CourseMap> selectCourseMapList(); 
	List<TravelMap> selectCourseMapList(); 
	
//	List<CourseMap> selectCourseMapDetailList(int contentId);
//	List<CourseMap> selectCourseMapList(int contentId); 
	
//	List<CourseMap> selectCourseMapList(String contentTypeName);
//	List<CourseMap> selectCourseMapList(Map<String, String> map);
}
