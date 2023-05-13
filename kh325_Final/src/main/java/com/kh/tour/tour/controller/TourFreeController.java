package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.TourFreeApi;
import com.kh.tour.tour.model.service.TourFreeService;
import com.kh.tour.tour.model.vo.TourFree;

@Controller
public class TourFreeController {

	@Autowired
	private TourFreeService freeService;

	@RequestMapping("/insertTourFree.do")
	public String initTourFreeApi(Model model) {

		int result = 0;

		while (true) {
			List<TourFree> list = TourFreeApi.callCurrentTourFreeByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (TourFree tourFree : list) {
				result = freeService.saveTourFree(tourFree);
			}

			if (result > 0) {
				model.addAttribute("msg", "무장애 반복정보 insert가 정상적으로 성공하였습니다.");
				model.addAttribute("location", "/");
			} else {
				model.addAttribute("msg", "무장애 반복정보 insert가 실패하였습니다.");
				model.addAttribute("location", "/");
			}
			return "/common/msg";
		}
	}

}
