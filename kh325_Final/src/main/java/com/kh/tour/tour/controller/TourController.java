package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.TourApi;
import com.kh.tour.tour.model.service.TourService;
import com.kh.tour.tour.model.vo.Tour;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService tService;

	@RequestMapping("/insertTour.do")
	public String initTourApi(Model model) {

		int result = 0;

		while (true) {
			List<Tour> list = TourApi.callCurrentTourByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (Tour tour : list) {
				result = tService.initTourInfo(tour);
			}

			if (result > 0) {
				model.addAttribute("msg", "DB insert에 정상적으로 성공하였습니다.");
				model.addAttribute("location", "/");
			} else {
				model.addAttribute("msg", "DB insert에 실패하였습니다.");
				model.addAttribute("location", "/");
			}
			return "/common/msg";
		}
	}
}
