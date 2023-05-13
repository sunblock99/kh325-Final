package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.TourFreeApi;
import com.kh.tour.tour.api.TourImageApi;
import com.kh.tour.tour.model.service.TourImageService;
import com.kh.tour.tour.model.vo.TourImage;

@Controller
public class TourImageController {
	
	@Autowired
	private TourImageService imageService;

	@RequestMapping("/insertTourImage.do")
	public String initTourImageApi(Model model) {

		int result = 0;

		while (true) {
			List<TourImage> list = TourImageApi.callCurrentTourImageByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (TourImage tourImage : list) {
				result = imageService.saveTourImage(tourImage);
			}

			if (result > 0) {
				model.addAttribute("msg", "이미지 반복정보 insert가 정상적으로 성공하였습니다.");
				model.addAttribute("location", "/");
			} else {
				model.addAttribute("msg", "이미지 반복정보 insert가 실패하였습니다.");
				model.addAttribute("location", "/");
			}
			return "/common/msg";
		}
	}

}
