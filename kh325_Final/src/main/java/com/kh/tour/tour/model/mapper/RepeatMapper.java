package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;

@Mapper
public interface RepeatMapper {

	int insertRepeatCourse (RepeatCourse repeatCourse);
	int insertRepeatHotel (RepeatHotel repeatHotel);
	int insertRepeatInfo (RepeatInfo repeatInfo);
}
