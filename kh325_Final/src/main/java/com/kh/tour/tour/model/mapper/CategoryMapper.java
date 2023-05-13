package com.kh.tour.tour.model.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.Category;

@Mapper
public interface CategoryMapper {
	
	int insertCategory(Category Category);

}
