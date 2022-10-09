package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.RepeatCourse;

@Mapper
public interface RepeatHotelMapper {

	int insertRepeatCourse (RepeatCourse repeatCourse);
}
