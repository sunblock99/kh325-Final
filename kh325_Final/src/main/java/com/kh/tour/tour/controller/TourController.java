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
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService tService;
	
	@GetMapping("/eventSearch.do") //지역,행사 페이지에서 체크박스로 행사리스트 조회
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
		
		PageInfo pageInfo = new PageInfo(page, 10, tService.getEventCount(param, neighbourhood), 12);
		int eventListCount = tService.getEventCount(param, neighbourhood);
		List<Tour> list = tService.getEventList(pageInfo, param, neighbourhood);
		if(neighbourhood != null) {
			List<String> neighbourhoodList = Arrays.asList(neighbourhood);
			
			model.addAttribute("neighbourhood", neighbourhoodList);
			}	
		
		model.addAttribute("list", list);
		model.addAttribute("eventListCount", eventListCount);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "event/eventSearch";
	}
	
	
	@GetMapping("/tourSearch.do") //관광지 페이지에서 체크박스로 관광지 리스트 조회
	public String tourSearchlist(Model model, @RequestParam Map<String, String> param, //파람 - 검색어 + date + 관광지타입
			@RequestParam(value = "areaCode" , required = false) List<String> areaCode, // 체크된 지역코드 리스트
			@RequestParam(value = "cat1" , required = false) String cat1, // 대분류 1개
			@RequestParam(value = "cat2" , required = false) List<String> cat2 // 중분류 리스트
			) {
		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());
		
		if(areaCode == null) {
			System.out.println("areaCodeList null");
		}else {
			System.out.println("checkbox areaCodeList list : " + areaCode);
		}
		if(cat1 == null) {
			System.out.println("cat1List null");
		}else {
			System.out.println("checkbox cat1  : " + cat1);
		}
		if(cat2 == null) {
			System.out.println("cat2List null");
		}else {
			System.out.println("checkbox cat2List list : " + cat2);
		}
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, tService.getTourCount(param, areaCode, cat1, cat2), 9);
		int tourListCount = tService.getTourCount(param, areaCode, cat1, cat2);
		List<Tour> tourlist = tService.getTourList(pageInfo, param, areaCode, cat1, cat2);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("param", param);
		model.addAttribute("tourListCount", tourListCount);
		model.addAttribute("tourlist", tourlist);
		return "tour/infoSearch";
	}
	
	
	@GetMapping("/tourDetailInfo.do") //  contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복 조회하기 
	public String tourDetailInfo(Model model, @RequestParam("contentId") int contentId, @RequestParam("contentTypeId") int contentTypeId) {
//		int contentId = 2661435;
//		int contentTypeId = 12;
		Tour tour = tService.findByContentId(contentId);
		List<RepeatInfo> repeatInfo = tService.findDetailByContentId(contentId);
		List<TourImage> imgDetail = tService.getTourImage(contentId);
		
		log.info("tour : " + tour);
		log.info("repeatInfo : " + repeatInfo);
		log.info("imgDetail : " + imgDetail);
		
		
		if(contentTypeId == 12) {
			DetailTourist detail = tService.getDetailTourist(contentId);
			model.addAttribute("detail", detail);
		}

		if(contentTypeId == 14) {
			DetailCultural detail = tService.getDetailCultural(contentId);
			model.addAttribute("detail", detail);
		}
		
		if(contentTypeId == 15) {
			DetailEvent detail = tService.getDetailEvent(contentId);
			model.addAttribute("detail", detail);
		}
		
		if(contentTypeId == 28) {
			DetailSports detail = tService.getDetailSports(contentId);
			model.addAttribute("detail", detail);
		}

		if(contentTypeId == 38) {
			DetailShopping detail = tService.getDetailShopping(contentId);
			model.addAttribute("detail", detail);
		}
		
		if(contentTypeId == 39) {
			DetailRestaurant detail = tService.getDetailRestaurant(contentId);
			model.addAttribute("detail", detail);
		}
		
		if(repeatInfo == null) {
			return "redirect:error";
		}
		
		model.addAttribute("tour", tour);
		model.addAttribute("repeatInfo", repeatInfo);
		model.addAttribute("imgDetail", imgDetail);
		return "tour/infoDetail";
	}

	@GetMapping("/tourDetailInfo.do") // contentId로 숙박 소개+반복 조회하기   
	public String HotelDetailInfo(Model model, @RequestParam("contentId") int contentId) {
		RepeatHotel repeatHotel = tService.findHotelDetailByContentId(contentId);
		
		if(repeatHotel == null) {
			return "redirect:error";
		}
		
		model.addAttribute("repeatHotel", repeatHotel);
		return "tour/infoDetail";
	}

}