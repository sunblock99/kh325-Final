package com.kh.tour.travelMap.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.community.model.vo.Gallery;
import com.kh.tour.travelMap.model.service.TravelMapService;
import com.kh.tour.travelMap.model.vo.CourseMap;
import com.kh.tour.travelMap.model.vo.RepeatCourseMap;
import com.kh.tour.travelMap.model.vo.TravelMap;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping("/map") // 요청 url의 '/board'가 생략되서 사용할수 있다. view는 안먹힌다!!
@Controller
public class TravelMapController {

	@Autowired
	private TravelMapService service;
	
	@GetMapping("/travelMap")
	public String travelMapList(Model model, @RequestParam(defaultValue="14") int contentTypeId, @RequestParam(defaultValue="1857193") int contentId) {
		List<TravelMap> travelMapList = service.getTravelMapList(contentTypeId);
		
		List<RepeatCourseMap> courseList = new ArrayList<>();
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 4, 555554, "나주향교", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7113842427", "35.0334536546"));
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 2, 555552, "서성문", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7126675", "35.0327516")); 
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 3, 555553, "금성관", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7159608", "35.03445495")); 
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 7, 555557, "북망문", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7156524", "35.0381917"));
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 9, 555559, "나주버스터미널", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.721438", "35.033662"));
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 0, 555550, "나씨삼강문", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7201145", "35.0311593"));  
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 1, 555551, "나주읍성", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7203946", "35.029392"));   
		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 8, 555558, "나주공공도서관", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7165616", "35.0289475"));
//		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 5, 555555, "555", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7203946", "35.029392"));
//		courseList.add(new RepeatCourseMap(1854612, 555555, 25, 6, 555556, "666", "장소 설명", "http://tong.visitkorea.or.kr/cms/resource/96/1609396_image2_1.jpg", "이미지 설명", "126.7203946", "35.029392"));

		
		System.out.println("컨텐츠타입 : " + contentTypeId);
//		System.out.println("travelMapList : " + travelMapList);
		
		model.addAttribute("travelMapList",travelMapList);
		
		TravelMap courseMap = service.getCourseByNo(contentId);
		List<TravelMap> courseMapList = service.getCourseMapList();
//		List<TravelMap> courseList = setCourseList().;
//		
//		System.out.println("courseMap 값 : "+ courseMap);
////		System.out.println("courseMapList 값 : "+ courseMapList);
//		System.out.println("코스컨텐츠 값 : "+ contentTypeId);
		System.out.println("courseList 값 : "+ courseList);
//		
		model.addAttribute("courseMapList", courseMapList);
		model.addAttribute("courseMap", courseMap);
		model.addAttribute("courseList", courseList);
		
		return "/map/travelMap";
	}
	
	
//	@GetMapping("/courseMap")
//	public String view(Model model, @RequestParam(defaultValue="1857193") int contentId) {
//		CourseMap courseMap = service.getCourseByNo(contentId);
//		List<CourseMap> courseMapList = service.getCourseMapList();
//		System.out.println("courseMap 값 : "+ courseMap);
//		System.out.println("courseMapList 값 : "+ courseMapList);
//		System.out.println("contentId 값 : "+ contentId);
//		System.out.println("courseList 값 : "+ courseMap.getCourse());
//		
////		if(courseMap == null) {
////			return "redirect:error";
////		}
//		
//		model.addAttribute("courseMapList", courseMapList);
//		model.addAttribute("courseMap", courseMap);
//		model.addAttribute("courseList", courseMap.getCourse());
//		return "/map/courseMap";
//	}
	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error";
	}
	
//	public static List<RepeatCourseMap> setCourseList(){
//		List<RepeatCourseMap> courseList = new ArrayList<>();
////		RepeatCourseMap rc = new RepeatCourseMap(0, 0, 0, 0, 0, null, null, null, null, null, null);
//		courseList.add(new RepeatCourseMap(0, 0, 0, 0, 0, null, null, null, null, null, null));
//		
//		return courseList;
//	}
//	public static void main(String[] args) {
//		TravelMapController.setCourseList();
//	}
}
