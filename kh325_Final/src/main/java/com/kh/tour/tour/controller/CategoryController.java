package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.categoryCodeApi;
import com.kh.tour.tour.model.service.CategoryService;
import com.kh.tour.tour.model.vo.Category;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService cService;

	@RequestMapping("/insertCategory.do")
	public String categoryCodeApi(Model model) {

		int result = 0;

		while (true) {
			List<Category> list = categoryCodeApi.callCurrentCategoryCodeApiByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (Category cateogry : list) {
				result = cService.saveCategory(cateogry);
			}

			if (result > 0) {
				model.addAttribute("msg", "DB insert에 정상적으로 성공하였습니다.");
				model.addAttribute("location", "/");
			} else {
				model.addAttribute("msg", "DB insert에 실패하였습니다.");
				model.addAttribute("location", "/");
			}
			return "/common/msg";
		}
	}

}
