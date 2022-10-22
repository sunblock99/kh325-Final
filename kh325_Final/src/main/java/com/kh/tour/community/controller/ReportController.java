package com.kh.tour.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.tour.manager.model.service.ManagerService;
import com.kh.tour.manager.model.vo.Manager;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes("loginMember") 
@RequestMapping("/community")
public class ReportController {
	
	
	 @Autowired
	 ManagerService managerService;
	
	 @RequestMapping("/reportFree")
	 public String reportFree(Model model, Manager manager) {
		 log.info("manager:" + manager);
		 int result = managerService.insertReport(manager);
			
        model.addAttribute("location", "/community/freeboardList");
		if(result > 0) {
			model.addAttribute("msg", "신고가 접수되었습니다.");
		}else {
			model.addAttribute("msg", "신고가 접수되지 않았습니다.");
		}
		return "/common/msg";
		 
	 }
	 @RequestMapping("/reportComp")
	 public String reportComp(Model model, Manager manager) {
		 log.info("manager:" + manager);
		 int result = managerService.insertReport(manager);
		 
		 model.addAttribute("location", "/community/companionList");
		 if(result > 0) {
			 model.addAttribute("msg", "신고가 접수되었습니다.");
		 }else {
			 model.addAttribute("msg", "신고가 접수되지 않았습니다.");
		 }
		 return "/common/msg";
		 
	 }
	 @RequestMapping("/reportJourney")
	 public String reportJourney(Model model, Manager manager) {
		 log.info("manager:" + manager);
		 int result = managerService.insertReport(manager);
		 
		 model.addAttribute("location", "/community/journeyList");
		 if(result > 0) {
			 model.addAttribute("msg", "신고가 접수되었습니다.");
		 }else {
			 model.addAttribute("msg", "신고가 접수되지 않았습니다.");
		 }
		 return "/common/msg";
		 
	 }
}
