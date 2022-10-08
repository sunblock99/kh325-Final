package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.TourMapper;
import com.kh.tour.tour.model.vo.Tour;

@Service
public class TourServiceImpl implements TourService{
	
	@Autowired
	private TourMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int initTourInfo(Tour tour) {
		return mapper.insertTourInfo(tour);
	}

}
