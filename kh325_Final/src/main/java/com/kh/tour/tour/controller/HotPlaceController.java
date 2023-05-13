package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.tour.model.service.HotPlaceService;
import com.kh.tour.tour.model.vo.HotPlace;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class HotPlaceController {

	@Autowired
	HotPlaceService service;
	
	@RequestMapping("/tour/hotPlace")
	public String selectHotPlace (Model model, @RequestParam(value = "contentTypeId" , required = false) String contentTypeId){
		
		if(contentTypeId == null) {
            System.out.println("contentTypeId null~~~");
        }else {
            System.out.println("checkbox contentTypeId list : " + contentTypeId);
        }
		
		List<HotPlace> hotPlaceList = service.selectHotPlaceList(contentTypeId);
		log.info("핫플레이스 페이지에 담길 : " + hotPlaceList);
		
		model.addAttribute("hotPlaceList", hotPlaceList);
		
		return "tour/hotPlace";
	}

}
