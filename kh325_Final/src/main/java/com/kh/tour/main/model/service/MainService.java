package com.kh.tour.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.main.model.vo.MainCommunity;
import com.kh.tour.main.model.vo.MainHotPlace;

public interface MainService {

	List<MainCommunity> selectMainCommunityList();
	List<MainHotPlace> selectMainHotPlace();
}
