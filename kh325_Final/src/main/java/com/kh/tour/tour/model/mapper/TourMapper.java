package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.Tour;

@Mapper
public interface TourMapper {

	int insertTourInfo(Tour tour);
}
