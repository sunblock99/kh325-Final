package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.tour.api.areaCodeApi;
import com.kh.tour.tour.model.service.AreaCodeService;
import com.kh.tour.tour.model.vo.AreaCode;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AreaCodeController {
	
	@Autowired
	private AreaCodeService aService;

	@RequestMapping("/insertAreaCode.do")
	public String areaCodeApi(Model model) {

		int result = 0;

		while (true) {
			List<AreaCode> list = areaCodeApi.callCurrentareaCodeApiByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (AreaCode areaCode : list) {
				result = aService.saveAreaCode(areaCode);
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
