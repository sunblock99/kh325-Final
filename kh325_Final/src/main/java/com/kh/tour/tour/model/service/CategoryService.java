package com.kh.tour.tour.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.mapper.CategoryMapper;
import com.kh.tour.tour.model.vo.Category;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryMapper mapper;
	
	
	@Transactional(rollbackFor = Exception.class)
	public int saveCategory (Category Category) {
		int result = 0;
		result = mapper.insertCategory(Category);
		
		return result;
	}

}
