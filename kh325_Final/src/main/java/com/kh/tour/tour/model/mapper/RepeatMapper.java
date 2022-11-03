package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatHotelParsing;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.RepeatInfoParsing;

@Mapper
public interface RepeatMapper {

	int insertRepeatInfo (RepeatInfoParsing repeatInfo);
	int insertRepeatCourse (RepeatCourse repeatCourse);
	int insertRepeatHotel (RepeatHotelParsing repeatHotel);
}
