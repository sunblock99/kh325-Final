package com.kh.tour.travelMap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.travelMap.model.service.TravelMapService;
import com.kh.tour.travelMap.model.vo.CourseMap;
import com.kh.tour.travelMap.model.vo.TravelMap;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping("/map") // 요청 url의 '/board'가 생략되서 사용할수 있다. view는 안먹힌다!!
@Controller
public class TravelMapController {

	@Autowired
	private TravelMapService service;
	
	
//	@GetMapping("/travelMap")
//	public String list(Model model, @RequestParam Map<String, String> param) {
//		log.info("param : " + param.toString());
//		
//		List<TravelMap> list = service.getTravelMapList(param);
//		
//		model.addAttribute("list",list);
//		model.addAttribute("param",param);
//		return "/map/travelMap";
//	}
		
	@GetMapping("/travelMap")
	public String travelMapList(Model model, String contentTypeName) {
		List<TravelMap> travelMapList = service.getTravelMapList(contentTypeName);
//		List<CourseMap> courseMapList = service.getCourseMapList(contentTypeName);
//		System.out.println("travelMapList : " + travelMapList);
		System.out.println("컨텐츠타입 : " + contentTypeName);
		
		model.addAttribute("travelMapList",travelMapList);
		return "/map/travelMap";
	}
	
//	@GetMapping("/courseMap")
//	public String courseMapList(Model model, @RequestParam Map<String, String> param) {
//		List<CourseMap> courseMapList = service.getCourseMapList(param);
//		System.out.println("courseMapList : " + courseMapList);
//		log.info("param : " + param.toString());
//		System.out.println("코스맵 파라미터 : " + param.toString());
//		
//		
//		model.addAttribute("courseMapList",courseMapList);
//		model.addAttribute("param",param);
//
//		return "/map/courseMap";
//	}
	
	
//	@GetMapping("/courseMap")
//	public String courseMapList(Model model) {
//		List<CourseMap> courseMapList = service.getCourseMapList();
//		System.out.println("courseMapList : " + courseMapList);
//		
//		model.addAttribute("courseMapList",courseMapList);
//		return "/map/courseMap";
//	}
	
//	@GetMapping("/courseMap")
//	public String courseMapDetailList(Model model, @RequestParam(required=true,defaultValue="1") int contentId) {
//		List<CourseMap> courseMapDetailList = service.getCourseMapDetailList(contentId);
//		List<CourseMap> courseMapList = service.getCourseMapList(contentId);
////		System.out.println("courseMapDetailList : " + courseMapDetailList);
//		System.out.println("contentId 값 : "+ contentId);
//		
//		model.addAttribute("courseMapList",courseMapList);
//		model.addAttribute("courseMapDetailList",courseMapDetailList);
//		return "/map/courseMap";
//	}
	
	@GetMapping("/courseMap")
	public String view(Model model, @RequestParam(defaultValue="1857193") int contentId) {
		CourseMap courseMap = service.getCourseByNo(contentId);
		List<CourseMap> courseMapList = service.getCourseMapList();
		System.out.println("courseMap 값 : "+ courseMap);
		System.out.println("courseMapList 값 : "+ courseMapList);
		System.out.println("contentId 값 : "+ contentId);
		System.out.println("courseList 값 : "+ courseMap.getCourse());
		
		if(courseMap == null) {
			return "redirect:error";
		}
		
		model.addAttribute("courseMapList", courseMapList);
		model.addAttribute("courseMap", courseMap);
		model.addAttribute("courseList", courseMap.getCourse());
		return "/map/courseMap";
	}
	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error";
	}
}
