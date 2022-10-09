package com.kh.tour.tour.model.service;

import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;

public interface RepeatService {

	int saveRepeatInfo(RepeatInfo repeatInfo);
	int saveRepeatCourse (RepeatCourse repeatCourse);
	int saveRepeatHotel (RepeatHotel repeatHotel);

}
