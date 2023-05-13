package com.kh.tour.tour.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.AreaCodeMapper;
import com.kh.tour.tour.model.vo.AreaCode;

@Service
public class AreaCodeService {
	
	@Autowired
	private AreaCodeMapper mapper;
	
	
	@Transactional(rollbackFor = Exception.class)
	public int saveAreaCode (AreaCode AreaCode) {
		int result = 0;
		result = mapper.insertAreaCode(AreaCode);
		
		return result;
	}

}
