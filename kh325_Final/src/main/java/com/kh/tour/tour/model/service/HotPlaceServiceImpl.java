package com.kh.tour.tour.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.tour.model.mapper.HotPlaceMapper;
import com.kh.tour.tour.model.vo.HotPlace;

@Service
public class HotPlaceServiceImpl implements HotPlaceService{

	@Autowired
	private HotPlaceMapper mapper;

	@Override
	public List<HotPlace> selectHotPlaceList(String contentTypeId) {
//		Map<String, Object> hotPlaceMap = new HashMap<String,Object>();
//				
//		if(contentTypeId != null) {
//			hotPlaceMap.put("contentTypeId", contentTypeId);
//		} 
		return mapper.selectHotPlaceList(contentTypeId);
	}

	
}
