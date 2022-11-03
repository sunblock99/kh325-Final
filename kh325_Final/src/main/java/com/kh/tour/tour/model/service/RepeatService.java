package com.kh.tour.tour.model.service;

import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatHotelParsing;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.RepeatInfoParsing;

public interface RepeatService {

	int saveRepeatInfo(RepeatInfoParsing repeatInfo);
	int saveRepeatCourse (RepeatCourse repeatCourse);
	int saveRepeatHotel (RepeatHotelParsing repeatHotel);

}
