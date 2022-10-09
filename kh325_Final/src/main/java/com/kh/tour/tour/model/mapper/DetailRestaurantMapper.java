package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailRestaurant;

@Mapper
public interface DetailRestaurantMapper {
	int insertDetailRestaurant (DetailRestaurant detailRestaurant);
}
