package com.kh.tour.tour.model.service;

import java.util.List;

import com.kh.tour.tour.model.vo.HotPlace;

public interface HotPlaceService {

	List<HotPlace> selectHotPlaceList(String contentTypeId);

	
}
