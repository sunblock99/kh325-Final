package com.kh.tour.event.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.event.model.service.EventService;
import com.kh.tour.tour.model.vo.Tour;

@Controller
public class EventController {
	@Autowired
	EventService service;
	
	
	@RequestMapping("calendar")
	public String calendar(Model model, @RequestParam Map<String, String> param) {
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getBoardCount(param), 3);
		List<Tour> calendarList = service.calendarList(pageInfo, param);
	
//		System.out.println("calendarList : " + calendarList);
//		System.out.println("가져온 캘린더 리스트 사이즈 : " + calendarList.size());
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("calendarList", calendarList);
		return "event/calendar";
	}
	
}
