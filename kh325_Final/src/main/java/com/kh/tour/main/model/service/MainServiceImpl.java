package com.kh.tour.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.main.model.mapper.MainMapper;
import com.kh.tour.main.model.vo.MainCommunity;
import com.kh.tour.main.model.vo.MainEvent;
import com.kh.tour.main.model.vo.MainHotPlace;


@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainMapper mapper;

	@Override
	public List<MainCommunity> selectMainCommunityList() {
		return mapper.selectMainCommunityList();
	}

	@Override
	public List<MainHotPlace> selectMainHotPlace() {
		return mapper.selectMainHotPlace();
	}

	@Override
	public List<MainEvent> selectMainEvent() {
		return mapper.selectMainEvent();
	}
	
}
