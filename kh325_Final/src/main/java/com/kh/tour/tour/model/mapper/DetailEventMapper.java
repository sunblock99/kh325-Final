package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailEvent;

@Mapper
public interface DetailEventMapper {
	
	int insertDetailEvent (DetailEvent detailEvent);
}

