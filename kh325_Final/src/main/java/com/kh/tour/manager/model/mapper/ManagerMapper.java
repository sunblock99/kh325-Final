package com.kh.tour.manager.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.manager.model.vo.Manager;

@Mapper
public interface ManagerMapper {
	int insertReport(Manager manager);
}
