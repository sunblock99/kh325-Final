package com.kh.tour.community.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.service.CompanionService;
import com.kh.tour.community.model.service.FreeBoardService;
import com.kh.tour.community.model.service.GalleryService;
import com.kh.tour.community.model.service.JourneyService;
import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.Freeboard;
import com.kh.tour.community.model.vo.Gallery;
import com.kh.tour.community.model.vo.Journey;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes("loginMember") 
public class CommunityController {
	
	@Autowired
	FreeBoardService freeboardService;
	
	@Autowired
	CompanionService companionService;
	
	@Autowired
	JourneyService journeyService;
	
	@Autowired
	GalleryService galleryService;
	
	@RequestMapping("/community")
	public String commnity(Model model,HttpServletRequest request) {
		
		Map<String,String> param = new HashMap<>();
		PageInfo pageInfo = new PageInfo(1, 109, freeboardService.selectBoardCount(param), 9);
		List<Freeboard> freeList = freeboardService.selectBoardList(pageInfo, param);
		
		pageInfo.setListLimit(4);
		List<Companion> compList = companionService.selectBoardList(pageInfo, param);
		
		pageInfo.setListLimit(freeboardService.selectBoardCount(param));
		List<Journey> journeyList = journeyService.selectBoardList(pageInfo, param);
		List<Journey> bestJourney = new ArrayList<>();
		
		for(Journey j:journeyList) {
			bestJourney.add(j);
		}
		
		for(Journey board : bestJourney) {
			if(board.getImgRenamed() != null) {
				if(board.getImgRenamed().contains("http")==false) {
					String rootPath = request.getContextPath();
					String savePath = rootPath + "/resources/uploaded";
					String imgPath = savePath + "/" + board.getImgRenamed();
					board.setImgRenamed(imgPath);
				}
				
			}
		}
		
		Collections.sort(bestJourney, new Comparator<Journey>() {
			@Override
			public int compare(Journey o1, Journey o2) {
				int a = o1.getCount();
				int b = o2.getCount();
				if(a>b) {
					return -1;
				}else {
					return 1;
				}
			};
		});
		
		pageInfo.setListLimit(6);
		List<Gallery> galleryList = galleryService.getGalleryList(pageInfo, param);
		
		for(int i = 0; i<galleryList.size();i++) {
			Gallery board= galleryList.get(i);
			if(board.getRenamedImage() != null) {
				if(board.getRenamedImage().contains("http")==false) {
					String rootPath = request.getContextPath();
					String savePath = rootPath + "/resources/uploaded";
					String imgPath = savePath + "/" + board.getRenamedImage();
					galleryList.get(i).setRenamedImage(imgPath);
				}
			}

		}
		
		model.addAttribute("freeList",freeList);
		model.addAttribute("compList",compList);
		model.addAttribute("journeyList",journeyList);
		model.addAttribute("bestJourney",bestJourney);
		model.addAttribute("galleryList",galleryList);
		
		return "community/communityMain";
	}
	
	
	
	
	
}
