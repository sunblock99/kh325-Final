package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.RepeatMapper;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatHotelParsing;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.RepeatInfoParsing;

@Service
public class RepeatServiceImpl implements RepeatService{
	
	@Autowired
	private RepeatMapper repeatMapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRepeatInfo (RepeatInfoParsing repeatInfo) {
		return repeatMapper.insertRepeatInfo(repeatInfo);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRepeatCourse (RepeatCourse repeatCourse) {
		return repeatMapper.insertRepeatCourse(repeatCourse);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRepeatHotel (RepeatHotelParsing repeatHotel) {
		return repeatMapper.insertRepeatHotel(repeatHotel);
	}

}
