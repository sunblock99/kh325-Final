package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailCultural;

@Mapper
public interface DetailCulturalMapper {

	int insertCulturalDetail (DetailCultural detailCultural);
}
