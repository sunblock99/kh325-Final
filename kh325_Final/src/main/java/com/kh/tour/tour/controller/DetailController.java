package com.kh.tour.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.api.DetailCourseApi;
import com.kh.tour.tour.api.DetailCulturalApi;
import com.kh.tour.tour.api.DetailEventApi;
import com.kh.tour.tour.api.DetailHotelApi;
import com.kh.tour.tour.api.DetailRestaurantApi;
import com.kh.tour.tour.api.DetailShoppingApi;
import com.kh.tour.tour.api.DetailSportsApi;
import com.kh.tour.tour.api.DetailTouristApi;
import com.kh.tour.tour.model.service.DetailService;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;

@Controller
public class DetailController {

	@Autowired
	private DetailService service;

	@RequestMapping("/DetailTourist/insert.do")
	public String initDetailTourist(Model model) {
		List<DetailTourist> list1 = DetailTouristApi.callCurrentDetailTouristByXML();
		int result1 = 0;
		for (DetailTourist detailTourist : list1) {
			result1 = service.saveDetailTourist(detailTourist);
		}

		if (result1 > 0) {
			model.addAttribute("msg", "관광지 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "관광지 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailCultural/insert.do")
	public String initDetailCultural(Model model) {
		List<DetailCultural> list2 = DetailCulturalApi.callCurrentDetailCulturalByXML();
		int result2 = 0;
		for (DetailCultural detailCultural : list2) {
			result2 = service.saveDetailCultural(detailCultural);
		}

		if (result2 > 0) {
			model.addAttribute("msg", "문화시설 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "문화시설 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailEvent/insert.do")
	public String initDetailEvent(Model model) {
		List<DetailEvent> list3 = DetailEventApi.callCurrentDetailEventByXML();
		int result3 = 0;
		for (DetailEvent detailEvent : list3) {
			result3 = service.saveDetailEvent(detailEvent);
		}

		if (result3 > 0) {
			model.addAttribute("msg", "행사축제 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "행사축제 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailSports/insert.do")
	public String initDetailSports(Model model) {
		List<DetailSports> list4 = DetailSportsApi.callCurrentDetailSportsByXML();
		int result4 = 0;
		for (DetailSports detailSports : list4) {
			result4 = service.saveDetailSports(detailSports);
		}

		if (result4 > 0) {
			model.addAttribute("msg", "레포츠 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "레포츠 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailShopping/insert.do")
	public String initDetailShopping(Model model) {
		List<DetailShopping> list5 = DetailShoppingApi.callCurrentDetailShoppingByXML();
		int result5 = 0;
		for (DetailShopping detailShopping : list5) {
			result5 = service.saveDetailShopping(detailShopping);
		}

		if (result5 > 0) {
			model.addAttribute("msg", "쇼핑 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "쇼핑 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailRestaurant/insert.do")
	public String initDetailRestaurant(Model model) {
		List<DetailRestaurant> list6 = DetailRestaurantApi.callCurrentDetailRestaurantByXML();
		int result6 = 0;
		for (DetailRestaurant detailRestaurant : list6) {
			result6 = service.saveDetailRestaurant(detailRestaurant);
		}

		if (result6 > 0) {
			model.addAttribute("msg", "음식점 소개정보  저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "음식점 저장 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailHotel/insert.do")
	public String initDetailHotel(Model model) {
		List<DetailHotel> list7 = DetailHotelApi.callCurrentDetailHotelByXML();
		int result7 = 0;
		for (DetailHotel detailHotel : list7) {
			result7 = service.saveDetailHotel(detailHotel);
		}

		if (result7 > 0) {
			model.addAttribute("msg", "숙박 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "숙박 소개정보 저장 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

	@RequestMapping("/DetailCourse/insert.do")
	public String initDetailCourse(Model model) {
		List<DetailCourse> list8 = DetailCourseApi.callCurrentDetailCourseByXML();
		int result8 = 0;
		for (DetailCourse detailCourse : list8) {
			result8 = service.saveDetailCourse(detailCourse);
		}

		if (result8 > 0) {
			model.addAttribute("msg", "여행코스 소개정보 저장성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "여행코스 소개정보 실패!!");
			model.addAttribute("location", "/");
		}

		return "/common/msg";
	}

}
