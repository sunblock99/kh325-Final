package com.kh.tour.tour.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.service.CourseService;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.member.model.vo.Member;
import com.kh.tour.tour.model.service.TourService;
import com.kh.tour.tour.model.vo.Category;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailReview;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.EventHighLike;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;
import com.kh.tour.tour.model.vo.TourLike;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService tService;

	@Autowired
	private CourseService courseService;

	@GetMapping("/eventSearch.do") // 지역,행사 페이지에서 체크박스로 행사리스트 조회
	public String eventSearchlist(Model model, @RequestParam Map<String, String> param,
			@RequestParam(value = "neighbourhood", required = false) String[] neighbourhood,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {

		if (neighbourhood == null) {
			System.out.println("neighbourhood null");
		} else {
			System.out.println("checkbox neighbourhood list : " + Arrays.toString(neighbourhood));
		}

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		PageInfo pageInfo = new PageInfo(page, 10, tService.getEventCount(param, neighbourhood), 12);
		int eventListCount = tService.getEventCount(param, neighbourhood);
		List<Tour> list = tService.getEventList(pageInfo, param, neighbourhood);
		if (neighbourhood != null) {
			List<String> neighbourhoodList = Arrays.asList(neighbourhood);

			model.addAttribute("neighbourhood", neighbourhoodList);
		}

		List<EventHighLike> eventHighLikeList = tService.getEventHighLike();
		if (eventHighLikeList != null) {

			System.out.println("찾아온 eventHighLikeList는 : " + eventHighLikeList);
			model.addAttribute("eventHighLikeList", eventHighLikeList);
		}

		model.addAttribute("list", list);
		model.addAttribute("eventListCount", eventListCount);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "event/eventSearch";
	}

	@GetMapping("/tourSearch.do") // 관광지 페이지에서 체크박스로 관광지 리스트 조회
	public String tourSearchlist(Model model, @RequestParam Map<String, String> param, // 파람 - 검색어 + date
			@RequestParam(value = "tourType", required = false) String tourType, // 관광지타입 1개
			@RequestParam(value = "areaCode", required = false) List<String> areaCode, // 체크된 지역코드 리스트
			@RequestParam(value = "cat1", required = false) String cat1, // 대분류 1개
			@RequestParam(value = "cat2", required = false) List<String> cat2, // 중분류 리스트
			@SessionAttribute(name = "loginMember", required = false) Member loginMember
	) {
		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());

		if (tourType == null) {
			System.out.println("tourType null");
		} else {
			System.out.println("checkbox tourType : " + tourType);
		}
		if (areaCode == null) {
			System.out.println("areaCodeList null");
		} else {
			System.out.println("checkbox areaCodeList list : " + areaCode);
		}
		if (cat1 == null) {
			System.out.println("cat1List null");
		} else {
			System.out.println("checkbox cat1  : " + cat1);
		}
		if (cat2 == null) {
			System.out.println("cat2List null");
		} else {
			System.out.println("checkbox cat2List list : " + cat2);
		}

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		if (cat1 != null) {
			System.out.println("체크박스에서 선택된 cat1 값 : " + cat1);
			List<Category> cat2List = tService.getCat2List(cat1); // cat1으로 찾아온 cat2항목과 이름
			System.out.println("찾아온 cat2List : " + cat2List.toString());
			model.addAttribute("cat2List", cat2List);
		}
		

		PageInfo pageInfo = new PageInfo(page, 10, tService.getTourCount(param, tourType, areaCode, cat1, cat2), 9);
		int tourListCount = tService.getTourCount(param, tourType, areaCode, cat1, cat2);
		List<Tour> tourlist = tService.getTourList(pageInfo, param, tourType, areaCode, cat1, cat2);
		System.out.println("찾아온 관광지 리스트 : " + tourlist);
		

		model.addAttribute("areaCode", areaCode);
		model.addAttribute("cat1", cat1);
		model.addAttribute("cat2", cat2);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("param", param);
		model.addAttribute("tourListCount", tourListCount);
		model.addAttribute("tourlist", tourlist);
		return "tour/infoSearch";
	}

	@GetMapping("/tourDetailInfo.do") // contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 소개+반복 조회하기
	public String tourDetailInfo(Model model, @RequestParam("contentId") int contentId,
			@RequestParam("contentTypeId") int contentTypeId) {
//		int contentId = 2661435;
//		int contentTypeId = 12;
		Tour tour = tService.findByContentId(contentId);
		List<RepeatInfo> repeatInfo = tService.findDetailByContentId(contentId);
		List<TourImage> imgDetail = tService.getTourImage(contentId);
		List<MyCourseSearch> listForCourseCreate = courseService.getForCreate();
		List<MyCourseSearch> detailCourseList = courseService.getDetailMyCourse(3);
//		log.info("tour : " + tour);
//		log.info("repeatInfo : " + repeatInfo);
//		log.info("imgDetail : " + imgDetail);

		if (contentTypeId == 12) {
			DetailTourist detail = tService.getDetailTourist(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("detail", detail);
			model.addAttribute("review", review);

			// log.info("review : " + review);

		}

		if (contentTypeId == 14) {
			DetailCultural detail = tService.getDetailCultural(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("detail", detail);
			model.addAttribute("review", review);

		}

		if (contentTypeId == 15) {
			DetailEvent detail = tService.getDetailEvent(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("review", review);
			model.addAttribute("detail", detail);

		}

		if (contentTypeId == 28) {
			DetailSports detail = tService.getDetailSports(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("review", review);
			model.addAttribute("detail", detail);

		}

		if (contentTypeId == 38) {
			DetailShopping detail = tService.getDetailShopping(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("review", review);
			model.addAttribute("detail", detail);

		}

		if (contentTypeId == 39) {
			DetailRestaurant detail = tService.getDetailRestaurant(contentId);
			List<DetailReview> review = tService.getReviewList(contentId);
			model.addAttribute("review", review);
			model.addAttribute("detail", detail);

		}

		if (repeatInfo == null) {
			return "redirect:error";
		}

		model.addAttribute("detailCourseList", detailCourseList);
		model.addAttribute("tour", tour);
		model.addAttribute("repeatInfo", repeatInfo);
		model.addAttribute("imgDetail", imgDetail);
		model.addAttribute("listForCourseCreate", listForCourseCreate);
		return "tour/infoDetail";
	}

	@PostMapping("/tourDetailInfo/leaveReview.do")
	public String insertReview(Model model, HttpServletRequest request, @RequestParam("contentId") int contentId,
			@RequestParam("contentTypeId") int contentTypeId, @RequestParam("userNo") int userNo,
			@RequestParam("star") int star, @RequestParam("content") String content,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember

	) {
		System.out.println("review 작성 컨트롤러 호출");
		
		log.info("리뷰 작성 요청");
		DetailReview detailReview = new DetailReview(0, contentId, userNo, star, content, null, null);
		int result = tService.insertReview(detailReview);
//		Tour tour = tService.findByContentId(contentId);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록되었습니다.");
		}else {
			model.addAttribute("msg", "리플 작성에 실패했습니다.");
		}
		model.addAttribute("location", request.getHeader("Referer"));
//		model.addAttribute("location", "/tourDetailInfo.do?contentId=" + detailReview.getContentId() + "&contentTypeId=" + tour.getContentTypeId());
		return "/common/msg";
	}

	@GetMapping("/tourLike.do") // 찜하기 기능
	public String tourLike(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("contentId") int contentId) {

		if (loginMember == null || loginMember.getUserNo() < 0) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/loginView");
			return "/common/msg";
		}

		if (contentId != 0 && contentId > 0) {
			System.out.println("가지고 들어온 contentId는 :" + contentId);
		} else {
			System.out.println("contentId null");
		}

		Tour tour = tService.findByContentId(contentId);
		int userNo = loginMember.getUserNo(); // 로그인한 회원의 userNo 받아오기
		System.out.println("현재 로그인된 회원번호는 :" + userNo);
		List<TourLike> tourLike = tService.selectTourLikeList(userNo); // 회원번호로 찜리스트 조회해오기
		System.out.println("회원번호로 조회한 찜목록 :" + tourLike.toString());

		if (tourLike.isEmpty() == true) {
			int result2 = tService.insertTourLike(userNo, contentId);
			if (result2 > 0) {
				model.addAttribute("msg", "찜목록에 넣기 성공하였습니다.");
			} else {
				model.addAttribute("msg", "찜목록에 넣기 실패하였습니다.");
			}
		}
	
		if (tourLike.isEmpty() == false) {
			for (int i = 0; i < tourLike.size(); i++) {
				if (tourLike.get(i).getContentId() == contentId) { // 찜목록에 내가 찜하고 싶은 관광지가 이미 있는 경우
					model.addAttribute("msg", "이미 있는 찜목록 입니다.");
					model.addAttribute("location", "/tourSearch.do");
					break;
				} else {// 찜목록에 내가 찜하고 싶은 관광지가 없는 경우 -> insert
					int result = tService.insertTourLike(userNo, contentId);
					if (result > 0) {
						model.addAttribute("msg", "찜목록에 넣기 성공하였습니다.");
						break;
					} else {
						model.addAttribute("msg", "찜목록에 넣기 실패하였습니다.");
						break;
					}
				}
			}
		}
		if (request.getHeader("Referer").contains("contentTypeId")) {
			model.addAttribute("location", "/tourDetailInfo.do?contentId=" + tour.getContentId()
					+ "&contentTypeId=" + tour.getContentTypeId());
		} else {
			model.addAttribute("location", request.getHeader("Referer"));
		}
		return "/common/msg";
	}
	


}