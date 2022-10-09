package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.RepeatCourseApi;
import com.kh.tour.tour.api.RepeatHotelApi;
import com.kh.tour.tour.api.RepeatInfoApi;
import com.kh.tour.tour.model.service.RepeatService;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class RepeatController {

	@Autowired
	private RepeatService repeatService;
	
	@RequestMapping("/insertRepeatInfo.do")
	public String intiRepeatInfo (Model model) {
		
		int result = 0;
		
		while (true) {
			List<RepeatInfo> repeatInfoList = RepeatInfoApi.callCurrentRepeatInfoByXML();
			if (repeatInfoList == null || repeatInfoList.isEmpty()) {
				continue;
			}
			
			for (RepeatInfo repeatInfo : repeatInfoList) {
				result = repeatService.saveRepeatInfo(repeatInfo);
			}
			
			if(result > 0) {
				model.addAttribute("msg", "DB insert 정상 작동 성공");
				model.addAttribute("location", "/");
			}
			
			return "/common/msg";
			
		}
	}
	
	@RequestMapping("/insertRepeatCourse.do")	
	public String initRepeatCourse (Model model) {
		
		int result = 0;
		
		while(true) {
			List<RepeatCourse> repeatCourseList = RepeatCourseApi.callCurrentRepeatCourseByXML();
			if (repeatCourseList == null || repeatCourseList.isEmpty()) {
				continue;
			}
			
			for (RepeatCourse repeatCourse : repeatCourseList) {
				result = repeatService.saveRepeatCourse(repeatCourse);
			}
			
			if (result > 0) {
				model.addAttribute("msg", "DB insert 정상 작동 성공");
				model.addAttribute("location", "/");
			}
			return "/common/msg";
		}
	}
	
	@RequestMapping("/insertRepeatHotel.do")
	public String initRepeatHotel (Model model) {
		
		int result = 0;
		
		while(true) {
			List<RepeatHotel> repeatHotelList = RepeatHotelApi.callCurrentRepeatHotelByXML();
			if (repeatHotelList == null || repeatHotelList.isEmpty()) {
				continue;
			}
			
			for (RepeatHotel repeatHotel : repeatHotelList) {
				result = repeatService.saveRepeatHotel(repeatHotel);
			}
			
			if(result>0) {
				model.addAttribute("msg", "DB insert 정상 작동 성공");
				model.addAttribute("location", "/");
			}
			
			return "/common/msg";
		}
	}
	
}

















