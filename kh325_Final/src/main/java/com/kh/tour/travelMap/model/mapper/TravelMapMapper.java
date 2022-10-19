package com.kh.tour.travelMap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.Tour;

@Mapper
public interface TravelMapMapper {
	List<Tour> selectTravelMapList(Map<String, String> map);
	
	Tour selectTourById(int contentId); 
	
}
