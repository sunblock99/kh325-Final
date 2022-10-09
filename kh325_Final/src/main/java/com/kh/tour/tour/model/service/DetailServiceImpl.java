package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.mapper.DetailMapper;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;

@Service
public class DetailServiceImpl implements DetailService{
	
	@Autowired
	private DetailMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailTourist (DetailTourist detailTourist) {
		int result = 0;
		result = mapper.insertDetailTourist(detailTourist);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailCultural(DetailCultural detailCultural) {
		int result = 0;
		result = mapper.insertDetailCultural(detailCultural);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailEvent(DetailEvent detailEvent) {
		int result = 0;
		result = mapper.insertDetailEvent(detailEvent);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailSports(DetailSports detailSports) {
		int result = 0;
		result = mapper.insertDetailSports(detailSports);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailShopping(DetailShopping detailShopping) {
		int result = 0;
		result = mapper.insertDetailShopping(detailShopping);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailRestaurant(DetailRestaurant detailRestaurant) {
		int result = 0;
		result = mapper.insertDetailRestaurant(detailRestaurant);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailHotel(DetailHotel detailHotel) {
		int result = 0;
		result = mapper.insertDetailHotel(detailHotel);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveDetailCourse(DetailCourse detailCourse) {
		int result = 0;
		result = mapper.insertDetailCourse(detailCourse);
		
		return result;
	}

}
