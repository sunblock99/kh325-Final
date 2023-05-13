package com.kh.tour.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.service.CompanionService;
import com.kh.tour.community.model.service.FreeBoardService;
import com.kh.tour.community.model.service.JourneyService;
import com.kh.tour.main.controller.MainController;
import com.kh.tour.member.model.service.MemberService;
import com.kh.tour.member.model.vo.Bookmark;
import com.kh.tour.member.model.vo.MemMyCourse;
import com.kh.tour.member.model.vo.Member;
import com.kh.tour.member.model.vo.MyCommunity;
import com.kh.tour.member.model.vo.Review;

import lombok.extern.slf4j.Slf4j;


@Slf4j // log용도
@SessionAttributes("loginMember") // loingMember를 model에서 취급할때 Session으로 처리하는 파라메터
@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private FreeBoardService freeboardService;
	
	@Autowired
	private CompanionService companionService;
	
	@Autowired
	private JourneyService journeyService;
	
	@Autowired
	MainController mainController;
	
	
	@PostMapping("/login")
	public String login(Model model, String userEmail, String userPassword) {
//		log.info("userEmail : " + userEmail + ", userPassword : " + userPassword);
		Member loginMember = service.login(userEmail, userPassword);
		
//		System.out.println("로그인 멤버는" + loginMember);
		if(loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			return "redirect:/";
		}else {
			model.addAttribute("msg", "아이디나 패스워드가 잘못되었습니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
	}
	
	@RequestMapping("/loginView")
	public String loginView(Model model) {
		
			return "myPage/login";
		
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
//		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드
//		log.info("status : " + status.isComplete());
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String enrollPage() {
//		log.info("가입 페이지 요청");
		return "myPage/signup";
	}
	
	// ModelAndView 사용법, 가능하면 하나 통일해서 쓸것!! ModelAndView=전자정부에서 좋아한다.....
	@PostMapping("/myPage/signup")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Member member) {
//		log.info("회원 가입, member : " + member);
		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {
			result = -1;
		}
		if(result > 0) {
			model.addObject("msg", "회원가입에 성공하였습니다.");
			model.addObject("location", "/");
		}else {
			model.addObject("msg", "회원가입에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addObject("location", "/");
		}
		model.setViewName("common/msg");
		return model;
	}
	
	// AJAX 대응용 코드
	// ResponseEntity : json 객체를 알아서 만들어 주는 리턴값
	@GetMapping("/member/idCheck")
	public ResponseEntity<Map<String,Object>> idCheck(String id){
//		log.info("아이디 중복 확인, user id : "+ id);
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	
	@GetMapping("/myPage/profile")
	public String view(Model model,@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
//		log.info("회원 정보 페이지 요청");
		if(loginMember == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		return "myPage/profile";
	}
	
//	@SessionAttribute : 세션으로 가지고 있는 값을 command 객체로 땡겨올때 쓰는 어노테이션
	@PostMapping("/myPage/update")
	public String update(Model model,
				@ModelAttribute Member member, // @ModelAttribute 생략 가능!!
				@SessionAttribute(name= "loginMember", required = false) Member loginMember,
				HttpServletRequest request,
				@RequestParam(name = "upfile", required = false) MultipartFile upfile
			) {
		if(loginMember == null || loginMember.getUserEmail().equals(member.getUserEmail()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		String orginAvatar = loginMember.getUserAvatar();
		System.out.println("orginAvatar : " + orginAvatar);
		
		 if(upfile != null && upfile.isEmpty() == false) {
			 
				String rootPath = request.getSession().getServletContext().getRealPath("resources");
				String savePath = rootPath + "/uploaded";
				String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
				
				if(renameFileName != null) {
					member.setUserAvatar(request.getContextPath() + "/resources/uploaded/" + renameFileName);
				}
			}
		
//		log.info("loginMember aaaa: " + member.getUserAvatar());
		
		if(member.getUserAvatar() == null) {
			member.setUserAvatar(orginAvatar);
		}
		member.setUserNo(loginMember.getUserNo());
		int result = service.save(member);
		
		if(result > 0 ) {
			model.addAttribute("loginMember", service.findByEmail(member.getUserEmail())); // DB에 있는 값으로 다시 세션값 업데이트
			model.addAttribute("msg", "회원정보를 수정하였습니다.");
			model.addAttribute("location", "/myPage/profile");
		}else {
			model.addAttribute("msg", "회원정보 수정을 실패하였습니다.");
			model.addAttribute("location", "/myPage/profile");
		}
		
		return "common/msg";
	}
	
	
	@GetMapping("/myPage/delete")
	public String delete(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		int result = service.delete(loginMember.getUserNo());
		
		if(result > 0 ) {
			model.addAttribute("msg", "정상적으로 탈퇴 되었습니다.");
			model.addAttribute("location", "/logout");
		}else {
			model.addAttribute("msg", "회원 탈퇴에 실패하였습니다.");
			model.addAttribute("location", "/myPage/profile");
		}
		return "common/msg";
	}
	
	
	@RequestMapping("/myPage/updatePwd")
	public String updatePwd(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember,
			String userPassword) {
		log.info("update pw : " + userPassword);
		
		int result = service.updatePwd(loginMember, userPassword);
		
		if(result > 0 ) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("location", "/myPage/profile");
			return "common/msg";
		}else {
			model.addAttribute("msg", "비밀번호 변경에 실패하였습니다.");
			model.addAttribute("location", "/myPage/profile");
			return "common/msg";
		}
	}
	
	@GetMapping("/kakao/callback")
	public String kakaoLogin(Model model,String code) throws Exception{
		// code는 카카오 서버로부터 받은 인가코드
//		System.out.println("카카오로그인 실행");
		
		String access_Token = service.getAccessToken(code);
		Member userInfo = service.getUserInfo(access_Token);
//		System.out.println("###uNo#### : " + userInfo.getUserNo());
//		System.out.println("###nickname#### : " + userInfo.getUserName());
//		System.out.println("###email#### : " + userInfo.getUserEmail());
		
		
		
		model.addAttribute("loginMember", userInfo);
		
		String main = mainController.main(model);

        return main;
	}
	
	
	@GetMapping("/myPage/bookmark")
	public String bookmark(Model model, 
			@SessionAttribute(name= "loginMember", required = false) Member loginMember
			,  @RequestParam Map<String, String> param) {
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		int uno = loginMember.getUserNo();
//		System.out.println("uno : " + uno);
		
		PageInfo pageInfo = new PageInfo(page, 10, service.countBookmark(uno), 9);
		List<Bookmark> bookmarkList = service.bookmark(pageInfo, param, uno);
	
//		log.info("bookmarkList : " + bookmarkList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("bookmarkList", bookmarkList);
		return "myPage/bookmark";
	}
	
	
	
	@GetMapping("/myPage/deleteBookmark")
	public String deleteBookmark(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember, int likeNo) {
		int result = service.deleteBookmark(likeNo);
		if( result > 0) {
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("location", "/myPage/bookmark");
		}else {
			model.addAttribute("msg", "삭제에 실패하였습니다.");
			model.addAttribute("location", "/myPage/bookmark");
		}
		return "/common/msg";
	}
	
	@GetMapping("/myPage/review")
	public String review(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		
		int uno = loginMember.getUserNo();
		List<Review> reviewList = service.review(uno);
		
		model.addAttribute("reviewList", reviewList);
	return "myPage/review";	
	}
	
	@GetMapping("/myPage/deleteReview")
	public String deleteReview(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember, int reviewNo) {
		int result = service.deleteReview(reviewNo);
		if( result > 0) {
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("location", "/myPage/bookmark");
		}else {
			model.addAttribute("msg", "삭제에 실패하였습니다.");
			model.addAttribute("location", "/myPage/bookmark");
		}
		return "myPage/review";
	}
	
	@GetMapping("/myPage/community")
	public String community(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember, @RequestParam Map<String,String> param) {
		
		int page = 1;
		
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		if(param.get("sortBy") == null) {
			param.put("sortBy","COMM_FREEBOARD");
		}
		param.put("userNo", loginMember.getUserNo()+"");
		
		//log.info("총게시글수: " + service.selectBoardCount(param));
		PageInfo pageInfo = new PageInfo(page, 10, service.selectBoardCount(param), 10);
		
		List<MyCommunity> communityList = service.community(pageInfo,param);
		
		//log.info("내가 쓴 컴티게시글: " + communityList);
		
		String boardCate = "";
		if(param.get("sortBy").equals("COMM_FREEBOARD")) {
			boardCate = "자유게시판";
		} else if(param.get("sortBy").equals("COMM_COMPANION")){
			boardCate = "동행구하기";
		} else {
			boardCate = "여행후기";
		}
		
		//log.info("boardCate:" + param.get("boardCate"));
		
		model.addAttribute("communityList", communityList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("param", param);
		model.addAttribute("boardCate", boardCate);
		model.addAttribute("loginMember", loginMember);
		
		return "myPage/community";	
	}
	
	// 마이페이지에서 글삭할때! 
	@GetMapping("/myPage/deleteCommunity")
	public String deleteCommunity(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember,  @RequestParam Map<String,String> param, HttpServletRequest request) {
		
//		log.info("param:" + param);
		
		String rootPath = request.getSession().getServletContext().getRealPath("uploaded");
//		log.info("rootPath:" + rootPath);
		rootPath = rootPath + "/uploaded"; 
		
		int result = 0;
		if(param.containsKey("freeboardNo")) {
			result = freeboardService.deleteBoard(Integer.parseInt(param.get("freeboardNo")),rootPath);
		}
		
		if(param.containsKey("journeyNo")) {
			result = journeyService.deleteBoard(Integer.parseInt(param.get("journeyNo")), rootPath);
		}
		
		if(param.containsKey("companionNo")) {
			result = companionService.deleteBoard(Integer.parseInt(param.get("companionNo")));
		}
		
		
		 if(result > 0) { 
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
		 	model.addAttribute("location", "/myPage/community"); 
		 }else {
			 model.addAttribute("msg", "삭제에 실패하였습니다."); 
			 model.addAttribute("location","/myPage/community"); 
		 } 
		 
		 return "/common/msg";
		 
	}
	
	@GetMapping("/myPage/mycourse")
	public String mycourse(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		
		int uno = loginMember.getUserNo();
		List<MemMyCourse> mycourseList = service.mycourse(uno);
					
		model.addAttribute("mycourseList", mycourseList);
	return "myPage/mycourse";	
	}	
	
	
	
	
}









