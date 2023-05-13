package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.TourFree;

@Mapper
public interface TourFreeMapper {

	int insertTourFreeInfo (TourFree tourFree);
}
