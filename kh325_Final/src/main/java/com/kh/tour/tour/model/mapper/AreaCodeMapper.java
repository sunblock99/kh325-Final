package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.AreaCode;

@Mapper
public interface AreaCodeMapper {

	int insertAreaCode(AreaCode AreaCode);

}
