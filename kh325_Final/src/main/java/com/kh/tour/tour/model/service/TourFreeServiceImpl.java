package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.TourFreeMapper;
import com.kh.tour.tour.model.vo.TourFree;

@Service
public class TourFreeServiceImpl implements TourFreeService{
	
	@Autowired
	private TourFreeMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveTourFree(TourFree tourFree) {
		return mapper.insertTourFreeInfo(tourFree);
	}


}
