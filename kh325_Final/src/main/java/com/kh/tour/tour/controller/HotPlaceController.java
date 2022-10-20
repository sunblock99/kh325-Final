package com.kh.tour.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.model.service.HotPlaceService;

@Controller
public class HotPlaceController {

	@Autowired
	private HotPlaceService service;
	
	@RequestMapping("/hotPlace")
	public String selectHotPlace (Model model) {
		return "/";
	}
}
