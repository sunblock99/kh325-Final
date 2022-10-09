package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailTourist;

@Mapper
public interface DetailTouristMapper {

	int insertDetailTourist (DetailTourist detailTourist);
}
