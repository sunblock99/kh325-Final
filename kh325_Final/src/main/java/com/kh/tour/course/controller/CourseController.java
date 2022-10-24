package com.kh.tour.course.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.service.CourseService;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourseCreate;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.RecommCourseDetail;
import com.kh.tour.course.model.vo.RecommCourseImage;
import com.kh.tour.course.model.vo.RecommCourseRev;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;

	@RequestMapping("/course/courseMyCourse")
	public String myCourseList(Model model, @RequestParam Map<String, String> param) {

		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		List<MyCourseSearch> countMyCoursebyIndex = courseService.countMyCoursebyIndex(param);
		int total = 0;
		int toSix = 0;

		if (countMyCoursebyIndex.isEmpty() == false) {
			for (int i = 0; i < countMyCoursebyIndex.size(); i++) {
				total += countMyCoursebyIndex.get(i).getIndexNum();
			}
		}

		if ((countMyCoursebyIndex.isEmpty() == false) && (countMyCoursebyIndex.size() > 6)) {
			for (int i = 0; i < 6; i++) {
				toSix += countMyCoursebyIndex.get(i).getIndexNum();
			}
		} else {
			for (int i = 0; i < countMyCoursebyIndex.size(); i++) {
				toSix += countMyCoursebyIndex.get(i).getIndexNum();
			}
		}

		System.out.println(toSix);

		PageInfo pageInfo = new PageInfo(page, 10, total, toSix);

		List<MyCourseSearch> myCourseList = courseService.findMyCourse(pageInfo, param);
		List<MyCourseSearch> indexCourseList = courseService.countMyCourse(param);

		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("myCourseList", myCourseList);
		model.addAttribute("indexCourseList", indexCourseList);
		model.addAttribute("countMyCoursebyIndex", countMyCoursebyIndex);

		return "/course/courseMyCourse";
	}

	@RequestMapping("/course/courseDetail")
	public String detailMyCourse(Model model, @RequestParam("myCourseNo") int myCourseNo) {
		log.info("param : " + myCourseNo);
		System.out.println("가지고 들어온 파람값: " + myCourseNo);

		List<MyCourseSearch> detailCourseList = courseService.getDetailMyCourse(myCourseNo);
		List<MyCourseRev> myCourseRevList = courseService.getMyCourseRev(myCourseNo);
		List<MyCourseImage> myCourseImageList = courseService.getMyCourseImage(myCourseNo);

		model.addAttribute("detailCourseList", detailCourseList);
		model.addAttribute("myCourseRevList", myCourseRevList);
		model.addAttribute("myCourseImageList", myCourseImageList);

		return "/course/courseDetail";
	}

	@RequestMapping("/course/recommCourseDetail")
	public String detailRecommCourse(Model model, @RequestParam("contentId") int contentId) {
		log.info("param : " + contentId);
		System.out.println("가지고 들어온 파람값: " + contentId);

		List<RecommCourseDetail> detailRecommCourseList = courseService.getDetailRecommCourse(contentId);
		List<RecommCourseImage> recommCourseImageList = courseService.getRecommCourseImage(contentId);
		List<RecommCourseRev> recommCourseRevList = courseService.getRecommCourseRev(contentId);

		model.addAttribute("detailCourseList", detailRecommCourseList);
		model.addAttribute("recommCourseImageList", recommCourseImageList);
		model.addAttribute("recommCourseRevList", recommCourseRevList);

		return "/course/recommCourseDetail";
	}

	@RequestMapping("/course/courseRecommended")
	public String tourList(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		PageInfo pageInfo = new PageInfo(page, 10, courseService.countRecommCourse(param), 6);
		List<MainRecommCourse> recommCourseList = courseService.findRecommCourse(pageInfo, param);
		int total = courseService.countRecommCourse(param);

		model.addAttribute("recommCourseList", recommCourseList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("total", total);

		return "/course/courseRecommended";
	}

	@RequestMapping("/course/courseMain")
	public String MyCourseMain(Model model) {

		List<MainMyCourse> MyCourseMain = courseService.findSortedByRevStar();
		List<MyCourseDetail> MyCourseMainDetail1 = courseService
				.findMyDetailByContentId((MyCourseMain.get(0).getMyCourseNo()));
		List<MyCourseDetail> MyCourseMainDetail2 = courseService
				.findMyDetailByContentId((MyCourseMain.get(1).getMyCourseNo()));
		List<MyCourseDetail> MyCourseMainDetail3 = courseService
				.findMyDetailByContentId((MyCourseMain.get(2).getMyCourseNo()));
		List<MyCourseDetail> MyCourseMainDetail4 = courseService
				.findMyDetailByContentId((MyCourseMain.get(3).getMyCourseNo()));

		System.out.println(MyCourseMain.get(0).getMyCourseMainImage());

		List<MainRecommCourse> recommCourseMain = courseService.SortedByRevStar();

		model.addAttribute("MyCourseMain", MyCourseMain);
		model.addAttribute("recommCourseMain", recommCourseMain);
		model.addAttribute("MyCourseMainDetail1", MyCourseMainDetail1);
		model.addAttribute("MyCourseMainDetail2", MyCourseMainDetail2);
		model.addAttribute("MyCourseMainDetail3", MyCourseMainDetail3);
		model.addAttribute("MyCourseMainDetail4", MyCourseMainDetail4);

		return "/course/courseMain";
	}

	// 코스 만들기
	@RequestMapping("/tour/infoDetail/createCourse")
	public String createCourse(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("userNo") int userNo, @RequestParam("myCourseTitle") String myCourseTitle) {

		if(loginMember == null || loginMember.getUserNo() < 0) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/tour/infoDetail");
			return "/common/msg";
		}
		
		log.info("코스 만들기 요청");
		MyCourseCreate myCourseCreate = new MyCourseCreate(0, userNo, myCourseTitle, null, null, null, null, null);
		int result = courseService.createCourse(myCourseCreate);

		if (result > 0) {
			model.addAttribute("msg", "코스 리스트에 성공적으로 추가되었습니다.");
			model.addAttribute("location", "/tour/infoDetail");
		} else {
			model.addAttribute("msg", "코스 리스트 추가에 실패하였습니다.");
			model.addAttribute("location", "/tour/infoDetail");
		}
		return "/common/msg";
	}

	// 코스 삭제하기
	@RequestMapping("/myPage/myCourse/delete")
	public String deleteCourse(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("myCourseNo") int myCourseNo) {

		log.info("코스 삭제 요청");

		int result = courseService.deleteCourse(myCourseNo);

		if (result > 0) {
			model.addAttribute("msg", "코스 리스트에서 삭제하였습니다.");
			model.addAttribute("location", "/myPage/myCourse");
		} else {
			model.addAttribute("msg", "코스 삭제에 실패하였습니다.");
			model.addAttribute("location", "/myPage/myCourse");
		}
		return "/common/msg";
	}

	// 코스 편집하기
	@RequestMapping("/myPage/myCourseEdit/edit")
	public String deleteCourse(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("myCourseTitle") String myCourseTitle, @RequestParam("myCourseThema") String myCourseThema,
			@RequestParam("myCourseSchedule") String myCourseSchedule,
			@RequestParam("myCourseContent") String myCourseContent,
			@RequestParam("myCourseMainImage") String myCourseMainImage,
			@RequestParam("myCourseStatus") String myCourseStatus) {

		int userNo = loginMember.getUserNo();

		log.info("코스 만들기 요청");
		MyCourseCreate myCourseCreate = new MyCourseCreate(0, userNo, myCourseTitle, myCourseThema, myCourseSchedule,
				myCourseContent, myCourseMainImage, myCourseStatus);

		int result = courseService.updateCourse(myCourseCreate);

		if (result > 0) {
			model.addAttribute("msg", "코스 편집에 성공하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		} else {
			model.addAttribute("msg", "코스 편집에 실패하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		}
		return "/common/msg";
	}

	// 코스 컨텐츠 하나 추가하기
	@RequestMapping("/tour/infoDetail/addContent")
	public String insertContent(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("myCourseNo") int myCourseNo, @RequestParam("contentId") int contentId) {
		
		int userNo = loginMember.getUserNo();
		int myCourseSn = 0;
		
		if(loginMember == null || userNo < 0) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/tour/infoDetail");
			return "/common/msg";
		}

		List<MyCourseSearch> myCourseList = courseService.getForMyPage(userNo, myCourseNo);
		if (myCourseList.isEmpty() == true) {
			myCourseSn = 1;
		} else {
			myCourseSn = myCourseList.size() + 1;
		}

		int result = courseService.insertContent(myCourseNo, contentId, myCourseSn);

		if (result > 0) {
			model.addAttribute("msg", "코스 추가에 성공하였습니다.");
			model.addAttribute("location", "/tour/infoDetail");
		} else {
			model.addAttribute("msg", "코스 추가에 실패하였습니다.");
			model.addAttribute("location", "/tour/infoDetail");
		}
		return "/common/msg";
	}

	// 코스 컨텐츠 하나 삭제하기
	@RequestMapping("/myPage/myCourseEdit/deleteContent")
	public String deleteContent(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("myCourseDetailNo") int myCourseDetailNo) {

		int result = courseService.deleteContent(myCourseDetailNo);

		if (result > 0) {
			model.addAttribute("msg", "코스 삭제에 성공하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		} else {
			model.addAttribute("msg", "코스 삭제에 실패하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		}
		return "/common/msg";
	}

	// 코스 순서 변경하기(올리기)
	@RequestMapping("/myPage/myCourseEdit/editSnAscent")
	public String editSnAscent(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("myCourseNo") int myCourseNo, @RequestParam("myCourseDetailNo") int myCourseDetailNo) {

		int userNo = loginMember.getUserNo();
		int originSn = 0;
		int targetSn = 0;
		int targetNo = 0;

		List<MyCourseSearch> myCourseList = courseService.getForMyPage(userNo, myCourseNo);
		List<MyCourseSearch> searchByNoList = courseService.getForEdit(myCourseDetailNo);

		if (myCourseList.size() == 1 || searchByNoList.get(0).getMyCourseSn() == 1
				|| searchByNoList.get(0).getMyCourseSn() == myCourseList.size()) {
			model.addAttribute("msg", "순서를 변경하실 수 없습니다");
			model.addAttribute("location", "/");
		} else {
			for (int i = 0; i < myCourseList.size(); i++) {
				if (myCourseList.get(i).getMyCourseDetailNo() == myCourseDetailNo) {
					targetSn = myCourseList.get(i - 1).getMyCourseSn();
					targetNo = myCourseList.get(i - 1).getMyCourseDetailNo();
					originSn = myCourseList.get(i).getMyCourseSn();
				}
			}
		}

		int ascentResult = courseService.ascent(targetSn, myCourseDetailNo);
		int descentResult = courseService.descent(originSn, targetNo);

		if (ascentResult > 0 && descentResult > 0) {
			model.addAttribute("msg", "순서 변경에 성공하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		} else {
			model.addAttribute("msg", "순서 변경에 실패하였습니다.");
			model.addAttribute("location", "/myPage/myCourseEdit");
		}
		return "/common/msg";
	}
	
	// 코스 순서 변경하기(내리기)
		@RequestMapping("/myPage/myCourseEdit/editSnDescent")
		public String editSnDescent(Model model, HttpServletRequest request,
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				@RequestParam("myCourseNo") int myCourseNo, @RequestParam("myCourseDetailNo") int myCourseDetailNo) {

			int userNo = loginMember.getUserNo();
			int originSn = 0;
			int targetSn = 0;
			int targetNo = 0;

			List<MyCourseSearch> myCourseList = courseService.getForMyPage(userNo, myCourseNo);
			List<MyCourseSearch> searchByNoList = courseService.getForEdit(myCourseDetailNo);

			if (myCourseList.size() == 1 || searchByNoList.get(0).getMyCourseSn() == 1
					|| searchByNoList.get(0).getMyCourseSn() == myCourseList.size()) {
				model.addAttribute("msg", "순서를 변경하실 수 없습니다");
				model.addAttribute("location", "/");
			} else {
				for (int i = 0; i < myCourseList.size(); i++) {
					if (myCourseList.get(i).getMyCourseDetailNo() == myCourseDetailNo) {
						targetSn = myCourseList.get(i + 1).getMyCourseSn();
						targetNo = myCourseList.get(i + 1).getMyCourseDetailNo();
						originSn = myCourseList.get(i).getMyCourseSn();
					}
				}
			}
		
			int descentResult = courseService.descent(targetSn, myCourseDetailNo);
			int ascentResult = courseService.ascent(originSn, targetNo);

			if (ascentResult > 0 && descentResult > 0) {
				model.addAttribute("msg", "순서 변경에 성공하였습니다.");
				model.addAttribute("location", "/myPage/myCourseEdit");
			} else {
				model.addAttribute("msg", "순서 변경에 실패하였습니다.");
				model.addAttribute("location", "/myPage/myCourseEdit");
			}
			return "/common/msg";
		}

//	@RequestMapping("/courseMain")
//	public String Course(Model model, @RequestParam("contentId") int contentId) {
//
//		Tour tourCourse = courseService.findCourseByContentId(contentId);
//		
//		model.addAttribute("tourCourse", tourCourse);
//
//		return "/course/courseMain";
//	}
//	
//	@RequestMapping("/courseDetail")
//	public String CourseDetail(Model model, @RequestParam("contentId") int contentId) {
//
//		DetailCourse detailCourse = courseService.findDetailByContentId(contentId);
//		
//		model.addAttribute("detailCourse", detailCourse);
//
//		return "/course/courseDetail";
//	}
}
