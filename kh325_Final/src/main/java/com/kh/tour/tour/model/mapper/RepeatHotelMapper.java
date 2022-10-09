package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.RepeatHotel;

@Mapper
public interface RepeatHotelMapper {

	int insertRepeatHotel (RepeatHotel repeatHotel);
}
