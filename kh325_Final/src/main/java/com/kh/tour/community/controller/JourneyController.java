package com.kh.tour.community.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.service.JourneyService;
import com.kh.tour.community.model.vo.CommLike;
import com.kh.tour.community.model.vo.Journey;
import com.kh.tour.community.model.vo.JourneyComment;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/community")
public class JourneyController {
	
	@Autowired
	JourneyService service;
	
	Member loginMember = new Member(2,"바밤바","abc.naver.com","1234","010-1111-111","사는 곳","", "y","n");
	
	// /community/journeyList
	
	@GetMapping("/journeyListScroll")
	public @ResponseBody List<Journey> journeyListScroll(@RequestParam Map<String, String> param,int page,HttpServletRequest request) {
		
		log.info("ㅁ.page: " + page);
		log.info("ㅁ.param: " + param);
		PageInfo pageInfo = new PageInfo(page, 6, service.selectBoardCount(param), 6);
		
		List<Journey> list = service.selectBoardList(pageInfo, param);
		List<String> likeList = new ArrayList<>();

		if(loginMember != null) {
			likeList = service.selectLikeListByNo(loginMember.getUserNo());
		}
		
		for(int i = 0; i<list.size();i++) {
			Journey board= list.get(i);
			
			if(board.getImgRenamed().contains("http")==false) {
				String rootPath = request.getContextPath();
				String savePath = rootPath + "/resources/uploaded";
				String imgPath = savePath + "/" + board.getImgRenamed();
				list.get(i).setImgRenamed(imgPath);
			}
			
			if(likeList.size()>0 && likeList.contains(board.getJourneyNo()+"")) {
				list.get(i).setLike(true);
			}
		}
		
		
		/*
		Map<Integer, String[]> hashMap = new HashMap<>();
		for(Journey j : list) {
			hashMap.put(j.getJourneyNo(), j.getHashTag().split(","));
		}
		*/
		
		return list;
		
	}
	
	@GetMapping("/journeyList")
	public String journeyList(Model model,@RequestParam Map<String, String> param,HttpServletRequest request/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		log.info("param : " + param.toString());
		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		
		log.info("page: " + page);
		PageInfo pageInfo = new PageInfo(page, 6, service.selectBoardCount(param), 6);
		
		List<Journey> list = service.selectBoardList(pageInfo, param);
		List<String> likeList = new ArrayList<>();
		if(loginMember != null) {
			likeList = service.selectLikeListByNo(loginMember.getUserNo());
		}
		
		
		for(int i = 0; i<list.size();i++) {
			Journey board= list.get(i);
			
			if(board.getImgRenamed().contains("http")==false) {
				String rootPath = request.getContextPath();
				String savePath = rootPath + "/resources/uploaded";
				String imgPath = savePath + "/" + board.getImgRenamed();
				list.get(i).setImgRenamed(imgPath);
			}
			
			if(likeList.size()>0 && likeList.contains(board.getJourneyNo()+"")) {
				list.get(i).setLike(true);
			}
			
		}
		
		Map<Integer, String[]> hashMap = new HashMap<>();
		for(Journey j : list) {
			hashMap.put(j.getJourneyNo(), j.getHashTag().split(","));
		}
		
		Journey bestPost = service.selectBestPost();
		
		if(bestPost.getImgRenamed().contains("http")==false) {
			String rootPath = request.getContextPath();
			String savePath = rootPath + "/resources/uploaded";
			String imgPath = savePath + "/" + bestPost.getImgRenamed();
			bestPost.setImgRenamed(imgPath);
		}
		
		log.info("likeList:" + likeList.toString() );
		log.info(list.toString());
		log.info(service.selectBoardCount(param)+"");
		model.addAttribute("totalCount", service.selectBoardCount(param)+"");
		model.addAttribute("hashMap",hashMap);
		model.addAttribute("list", list);
		model.addAttribute("bestPost",bestPost);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "community/blogList";
	}
	
	@GetMapping("/journeyDetail")
	public String journeyDetail(Model model, HttpServletRequest request,@RequestParam int journeyNo/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		log.info("journeyNo : " + journeyNo);
		
		Journey board = service.selectBoardByNo(journeyNo);
		
		if(board.getImgRenamed().contains("http")==false) {
			String rootPath = request.getContextPath();
			String savePath = rootPath + "/resources/uploaded";
			String imgPath = savePath + "/" + board.getImgRenamed();
			board.setImgRenamed(imgPath);
		}
			
		
		List<JourneyComment> comments = board.getCommentList();
		
		List<String> likeList = new ArrayList<>();
		if(loginMember != null) {
			likeList = service.selectLikeListByNo(loginMember.getUserNo());
		}
		
		if(likeList.size()>0 && likeList.contains(board.getJourneyNo()+"")) {
			board.setLike(true);
		}
		
		if(loginMember != null) {
			likeList = service.selectLikeListByNo(loginMember.getUserNo());
		}
		
		//테스트용
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("board",board);
		model.addAttribute("comments",comments);
		
		log.info("상세:" + board.toString());
		log.info("댓글리스트:" + comments.toString());
		log.info("comment sorted:",comments);
		
		return "community/blogDetail";
	}
	
	 @PostMapping("/writeJourneyComment")
	 public String writerFreeComment(Model model, JourneyComment comment/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		 log.info("comment:" + comment);
		 
		 // 세션에서 로긴 멤버 정보 가져와
		 comment.setUserNo(loginMember.getUserNo());
		 
		 int result = service.insertComment(comment);
		 
		 if(result > 0) {
				model.addAttribute("msg", "코멘트가 등록 되었습니다.");
		 }else {
				model.addAttribute("msg", "코멘트 작성에 실패하였습니다.");
		 }
		 
		model.addAttribute("location", "/community/journeyDetail?journeyNo=" + comment.getJourneyNo());
		return "/common/msg";
	 }
	 
	 @GetMapping("/deleteJourneyComment")
	 public String deleteJourneyComment(Model model, int commentNo, int journeyNo) {
		 
		 int result = service.deleteComment(commentNo);
		 if(result > 0) {
				model.addAttribute("msg", "코멘트가 삭제 되었습니다.");
		 }else {
				model.addAttribute("msg", "코멘트 삭제에 실패하였습니다.");
		 }
		 
		model.addAttribute("location", "/community/journeyDetail?journeyNo=" + journeyNo);
		return "/common/msg";

	 }
	 
	 @GetMapping("/updateJourney")
	 public String updateJourneyGet(Model model, int journeyNo/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		 
	
		 Journey board = service.selectBoardByNo(journeyNo);
		 
		 
		 if((loginMember.getUserNo()==board.getUserNo()) == false) {
				model.addAttribute("msg", "잘못된 접근입니다.");
				model.addAttribute("location", "/community/journeyList");
				return "/common/msg";
		 }
			
		 model.addAttribute("board",board);
		 
		 return "community/blogUpdate";
		 
	 }
	 
	 
	 @PostMapping("/updateJourney")
	 public String updateJourneyPost (Model model, Journey board,
			 HttpServletRequest request, @RequestParam("upfile") MultipartFile upfile/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		 
		 board.setUserNo(loginMember.getUserNo());
		 log.info("board:" + board);	
		// 파일을 저장하는 로직
		 if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/uploaded";
			
			// 기존에 파일이 있는 경우 -> 기존 파일 삭제요청 필요!!
			if(board.getImgRenamed() != null) {
				service.deleteFile(savePath + "/" + board.getImgRenamed());
			}
			
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
			if(renameFileName != null) {
				board.setImgOriginal(upfile.getOriginalFilename());
				board.setImgRenamed(renameFileName);
			}
		 }
		 
		 int result = service.insertBoard(board);

		 log.info("board:" + board);
		 
		 if(result > 0) {
			model.addAttribute("msg", "후기 수정이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/community/journeyDetail?journeyNo=" + board.getJourneyNo());
		 }else {
			model.addAttribute("msg", "후기 수정에 실패하였습니다.");
			model.addAttribute("location", "/community/journeyDetail?journeyNo=" + board.getJourneyNo());
		 }
		 return "/common/msg";
	 }
	 
	 @GetMapping("/journeyWrite")
	 public String journeyWriteGet(Model model) {
		 
		 model.addAttribute("loginMember",loginMember);
		 
		 return "/community/blogWrite";
		 
	 }
	 
	 @PostMapping("/journeyWrite")
	 public String journeyWritePost(Model model, Journey board,HttpServletRequest request,@RequestParam("upfile") MultipartFile upfile) {
		 
		 log.info("들어온 journey : ", board);
		 
		 if((loginMember.getUserNo()==board.getUserNo()) == false) {
				model.addAttribute("msg", "잘못된 접근입니다.");
				model.addAttribute("location", "/community/journeyList");
				return "/common/msg";
		 }
		 if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/uploaded";
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
			
			if(renameFileName != null) {
				board.setImgOriginal(upfile.getOriginalFilename());
				board.setImgRenamed(renameFileName);
			}
		}
		 
		 int result = service.insertBoard(board);
		
			 
		 if(result > 0) {
			model.addAttribute("msg", "후기 등록이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/community/journeyList");
		 }else {
			model.addAttribute("msg", "후기 등록에 실패하였습니다.");
			model.addAttribute("location", "/community/journeyList");
		 }
		 return "/common/msg";
	 }
	 
	 @GetMapping("/deleteJourney")
	 public String deleteJourney(HttpServletRequest request, Model model,
			 int journeyNo/*@SessionAttribute(name = "loginMember", required = false) Member loginMember*/) {
		 
		 Journey board = service.selectBoardByNo(journeyNo);
		 
		 if((loginMember.getUserNo()==board.getUserNo()) == false) {
				model.addAttribute("msg", "잘못된 접근입니다.");
				model.addAttribute("location", "/community/journeyList");
				return "/common/msg";
		 }
		 
		 String rootPath = request.getSession().getServletContext().getRealPath("uploaded");
		 log.info("rootPath:" + rootPath);
		 rootPath = rootPath + "/uploaded"; 
		 int result = service.deleteBoard(journeyNo, rootPath);
		 
		 if(result > 0) {
				model.addAttribute("msg", "후기가 정상적으로 삭제되었습니다.");
				model.addAttribute("location", "/community/journeyList");
			 }else {
				model.addAttribute("msg", "후기 삭제에 실패하였습니다.");
				model.addAttribute("location", "/community/journeyList");
			 }
			 return "/common/msg";
		 
	 }
	 
	 @GetMapping("/likeOnOff")
	 public @ResponseBody String likeOnOff(String boardNo) {
		 
		 Map<String,String> param = new HashMap<String, String>();
		 param.put("boardNo", boardNo+"");
		 param.put("userNo", loginMember.getUserNo()+"");
		 
		 CommLike like = service.selectIsLikeByNo(param);
		 
		 if(like != null) {
			 return service.deleteLikeByNo(param)+"";
		 }
		 
		 log.info("param :: "+param);
		 return service.addLikeInfo(param)+"";
		 
	 }
	 
}
