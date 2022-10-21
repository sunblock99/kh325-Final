package com.kh.tour.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.HotPlace;

@Mapper
public interface HotPlaceMapper {

	List<HotPlace> selectHotPlaceList(String hotPlaceMap);

}
