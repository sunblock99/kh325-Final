package com.kh.tour.travelMap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.vo.TravelMap;

@Mapper
public interface TravelMapMapper {
	List<TravelMap> selectTravelMapList(String contentTypeName);
//	List<TravelMap> selectTravelMapList(Map<String, String> map);
	
	Tour selectTourById(int contentId); 
	
}
