package com.kh.tour.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.main.model.service.MainService;
import com.kh.tour.main.model.vo.MainCommunity;
import com.kh.tour.main.model.vo.MainHotPlace;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class MainController {
	@Autowired
	MainService service;
	
	@RequestMapping("/main")
	public String main(Model model) {
		List<MainHotPlace> selectMainHotPlace = service.selectMainHotPlace();
		List<MainCommunity> selectMainCommunityList = service.selectMainCommunityList();
		
		log.info("핫플은 : " + selectMainHotPlace);
		model.addAttribute("selectMainHotPlace", selectMainHotPlace);
		log.info("커뮤니티는 : " + selectMainCommunityList);
		model.addAttribute("selectMainCommunityList", selectMainCommunityList);
		
		return "main/mainHome";
	}
	
	
	
	
}
