package com.kh.tour.manager.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.manager.model.mapper.ManagerMapper;
import com.kh.tour.manager.model.vo.Manager;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerMapper mapper;
	
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int insertReport(Manager manager) {
		return mapper.insertReport(manager);
	}
	
}
