package com.kh.tour.community.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.service.CompanionService;
import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.CompanionComment;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/community")
@SessionAttributes("loginMember") 
public class CompanionController {
	
	@Autowired
	CompanionService service;
	
	//   /community/companionList
	@GetMapping("/companionList")
	public String freeboardList(Model model, @RequestParam Map<String, String> param,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
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
		List<Companion> list = service.selectBoardList(pageInfo, param);
		int totalCount = service.selectBoardCount(param);
		//log.info(list.toString());
		//log.info("리스트 사이즈"+ list.size());
		//log.info("totalCount 사이즈"+ totalCount);
		
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("totalCount", totalCount);
		
		return "community/companion";
		
	}
	
	@GetMapping("/compCommentForWriter")
	public String compCommentForWriter(Model model, int companionNo,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		log.info("no:" + companionNo);
		List<Member> setMember = service.selectCommentSenderList(companionNo); 
		
		log.info("Members"+setMember.toString());
		
		Map<String, String> param = new HashMap<>();
		param.put("companionNo", ""+companionNo);
		
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("setMember",setMember);
		model.addAttribute("param",param);
		
		return "/community/compCommentsForWriter";
	}
	
	@GetMapping("/compCommentForSender")
	public String compCommentForSender(Model model, int companionNo,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		log.info("no:" + companionNo);
		List<CompanionComment> list = service.selectCommentByNo(companionNo,loginMember.getUserNo());
		for(int i = 0; i<list.size();i++) {
			if(list.get(i).getSenderNo() != loginMember.getUserNo()) {
				list.remove(i);
			}
		}
		
		log.info("제거된 리스트: " + list);
		
		Companion companion = service.selectCompanionByNo(companionNo);
		
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("companion",companion);
		model.addAttribute("list",list);
		
		return "/community/compCommentsForSender";
	}
	
	@GetMapping("/showComments")
	public String showComments(Model model, int companionNo, int senderNo,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		List<CompanionComment> list = service.selectCommentByNo(companionNo,senderNo);
		List<Member> setMember = service.selectCommentSenderList(companionNo); 
		
		log.info("list:" + list);
		model.addAttribute("list",list);
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("setMember",setMember);
		model.addAttribute("selected","selected");
		
		return "/community/compCommentsForWriter";
	}
	
	@GetMapping("/deleteCompanion")
	public String deleteCompanion(Model model, int companionNo,int userNo,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		if(loginMember.getUserNo() != userNo) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/community/companionList");
			return "/common/msg";
		}
		
		int result = service.deleteBoard(companionNo);
		
		if(result>0) {
			model.addAttribute("msg", "메모 삭제에 성공했습니다.");
			model.addAttribute("location", "/community/companionList");
			return "/common/msg";
		}else {
			model.addAttribute("msg", "메모 삭제에 실패했습니다.");
			model.addAttribute("location", "/community/companionList");
			return "/common/msg";
		}
	}
	
	// 메모 게시글 등록 
	@PostMapping("/writeCompanion")
	public String writeCompanion(Model model, Companion companion) {
		
		log.info("companion:"+ companion);
		int result = service.insertBoard(companion);
		
		if(result>0) {
			model.addAttribute("msg", "메모 등록에 성공했습니다.");
			model.addAttribute("location", "/community/companionList");
			return "/common/msg";
		}else {
			model.addAttribute("msg", "메모 등록에 실패했습니다.");
			model.addAttribute("location", "/community/companionList");
			return "/common/msg";
		}
	}
	
	// 동행 신청시
	@PostMapping("/sendCompComment")
	public String sendCompComment(Model model, CompanionComment comment) {
		log.info("companionComment:",comment);
		
		int result = service.insertComment(comment);
		
		if(result>0) {
			model.addAttribute("msg", "동행 신청에 성공했습니다.");
			model.addAttribute("location", "/community/compCommentForSender?companionNo="+comment.getCompanionNo());
			return "/common/msg";
			
		}else {
			model.addAttribute("msg", "동행 신청에 실패했습니다.");
			model.addAttribute("location", "/community/compCommentForSender?companionNo="+comment.getCompanionNo());
			return "/common/msg";
		}
	}
	
	// 메모쓴이가 답장 할때
	@PostMapping("/replyCompComment")
	public String writeCompComment(Model model, CompanionComment comment) {
		
		log.info("companionComment:"+comment);
		
		int result = service.insertComment(comment);
		
		//model.addAttribute("companionNo",comment.getCompanionNo());

		if(result>0) {
			model.addAttribute("msg", "동행 답변에 성공했습니다.");
			model.addAttribute("location", "/community/showComments?companionNo="+comment.getCompanionNo()+"&senderNo="+comment.getSenderNo());
			return "/common/msg";
		}else {
			model.addAttribute("msg", "동행 답변에 실패했습니다.");
			model.addAttribute("location", "/community/compCommentForWriter?companionNo="+comment.getCompanionNo());
			return "/common/msg";
		}
	}
	
}
