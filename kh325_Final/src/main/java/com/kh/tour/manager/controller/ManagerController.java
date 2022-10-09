package com.kh.tour.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.tour.manager.model.service.ManagerService;
import com.kh.tour.manager.model.vo.Manager;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService service;
	
	@PostMapping("/manager/insertReport")
	public String imsertReport(Model model, Manager manager) {
		int result = service.insertReport(manager);
		if(result > 0) {
			return "";
		}else {
			return "";
		}
		
	}
	
}
