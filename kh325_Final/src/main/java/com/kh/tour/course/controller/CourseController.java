package com.kh.tour.course.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.service.CourseService;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourse;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.MyCourseSearchIndex;
import com.kh.tour.course.model.vo.RecommCourseDetail;
import com.kh.tour.course.model.vo.RecommCourseImage;
import com.kh.tour.course.model.vo.RecommCourseRev;
import com.kh.tour.tour.model.vo.Tour;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private CourseService courseService;

	@RequestMapping("/courseMyCourse")
	public String myCourseList(Model model, @RequestParam Map<String, String> param) {

		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());
		
		  int page = 1;
	      if(param.containsKey("page") == true) {
	         try {
	            page = Integer.parseInt(param.get("page"));
	         } catch (Exception e) {}
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
			}else {
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
	
	@RequestMapping("/courseDetail")
	public String detailMyCourse(Model model, @RequestParam("myCourseNo") int myCourseNo) {
		log.info("param : " + myCourseNo);
		System.out.println("가지고 들어온 파람값: " + myCourseNo);
		
		List<MyCourseSearch> detailCourseList = courseService.getDetailMyCourse(myCourseNo);
		List<MyCourseRev> myCourseRevList = courseService.getMyCourseRev(myCourseNo);
		List<MyCourseImage> myCourseImageList =courseService.getMyCourseImage(myCourseNo);
		
		
		model.addAttribute("detailCourseList", detailCourseList);
		model.addAttribute("myCourseRevList", myCourseRevList);
		model.addAttribute("myCourseImageList", myCourseImageList);
		
		return "/course/courseDetail";
	}
	
	@RequestMapping("/recommCourseDetail")
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

	@RequestMapping("/courseRecommended")
	public String tourList(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		System.out.println("가지고 들어온 파람값: " + param.toString());
		
		
		  int page = 1;
	      if(param.containsKey("page") == true) {
	         try {
	            page = Integer.parseInt(param.get("page"));
	         } catch (Exception e) {}
	      }
	      
	    PageInfo pageInfo = new PageInfo(page, 10, courseService.countRecommCourse(param), 6);
		List<MainRecommCourse> recommCourseList = courseService.findRecommCourse(pageInfo, param);
		int total = courseService.countRecommCourse(param); 
		
		model.addAttribute("recommCourseList", recommCourseList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("total", total);

		return "/course/courseRecommended";
	}

	@RequestMapping("/courseMain")
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
