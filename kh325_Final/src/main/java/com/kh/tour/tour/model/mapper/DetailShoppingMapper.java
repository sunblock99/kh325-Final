package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.DetailShopping;

@Mapper
public interface DetailShoppingMapper {

	int insertShoppingDetail (DetailShopping detailShopping);
}


