package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailHotel;
@Mapper
public interface DetailHotelMapper {

	int insertDetailHotel (DetailHotel detailHotel);
}
