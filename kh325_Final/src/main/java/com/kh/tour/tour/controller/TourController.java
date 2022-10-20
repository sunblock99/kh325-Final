package com.kh.tour.tour.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.service.TourService;
import com.kh.tour.tour.model.vo.Tour;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService tService;
	
	@GetMapping("/eventSearch")
	public String eventSearchlist(Model model, @RequestParam Map<String, String> param,
			@RequestParam(value = "neighbourhood" , required = false) String[] neighbourhood) {
		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());
		
		if(neighbourhood == null) {
			System.out.println("neighbourhood null");
		}else {
			System.out.println("checkbox neighbourhood list : " + Arrays.toString(neighbourhood));
		}
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, tService.getEventCount(param, neighbourhood), 9);
		int eventListCount = tService.getEventCount(param, neighbourhood);
		List<Tour> list = tService.getEventList(pageInfo, param, neighbourhood);
//		List<String> neighbourhoodList = Arrays.asList(neighbourhood);
		
		model.addAttribute("list", list);
		model.addAttribute("eventListCount", eventListCount);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
//		model.addAttribute("neighbourhood", neighbourhoodList);
		return "event/eventSearch";
	}

}