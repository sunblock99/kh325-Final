package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.TourImage;

@Mapper
public interface TourImageMapper {

	int insertTourImageInfo (TourImage tourImage);
}
