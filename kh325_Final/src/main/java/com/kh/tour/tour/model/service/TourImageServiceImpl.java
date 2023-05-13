package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.TourImageMapper;
import com.kh.tour.tour.model.vo.TourImage;


@Service
public class TourImageServiceImpl implements TourImageService{
	
	@Autowired
	private TourImageMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveTourImage(TourImage tourImage) {
		return mapper.insertTourImageInfo(tourImage);
	}


}
