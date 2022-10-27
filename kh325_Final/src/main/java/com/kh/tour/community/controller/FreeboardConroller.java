package com.kh.tour.community.controller;

import java.net.URLEncoder;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.service.FreeBoardService;
import com.kh.tour.community.model.vo.FreeBoardComment;
import com.kh.tour.community.model.vo.Freeboard;
import com.kh.tour.manager.model.service.ManagerService;
import com.kh.tour.manager.model.vo.Manager;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes("loginMember") 
@RequestMapping("/community")
public class FreeboardConroller {

	@Autowired
	FreeBoardService service;
	
	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	

	/* /community/freeboardList */
	@GetMapping("/freeboardList")
	public String freeboardList(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		log.info("page: " + page);
		PageInfo pageInfo = new PageInfo(page, 10, service.selectBoardCount(param), 10);
		List<Freeboard> list = service.selectBoardList(pageInfo, param);
		//log.info(list.toString());
		
		List<Freeboard> bestList = service.selectBestPost();
		
		model.addAttribute("list", list);
		model.addAttribute("bestList",bestList);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("boardCountAll", service.selectBoardCountAll());
		
		return "community/freeList";
		
	}
	
	@GetMapping("/freeDetail")
	public String freeDetail(Model model, @RequestParam int freeboardNo,@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("freeboardNo : " + freeboardNo);
		log.info("loginMember : " + loginMember);
		
		if(loginMember == null) {
			model.addAttribute("msg", "로그인후 조회하실 수 있습니다.");
			model.addAttribute("location", "/loginView");
			return "/common/msg";
		}
		
		Freeboard board = service.selectBoardByNo(freeboardNo);
		List<FreeBoardComment> comments = board.getCommentList();
		List<Freeboard> bestList = service.selectBestPost();
		
		//테스트용
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("board",board);
		model.addAttribute("comments",comments);
		model.addAttribute("bestList",bestList);
		
		//log.info("상세:" + board.toString());
		//log.info("댓글리스트:" + comments.toString());
		
		Collections.sort(comments, new Comparator<FreeBoardComment>() {
			@Override
			public int compare(FreeBoardComment o1, FreeBoardComment o2) {
				int a = o1.getCommentNo();
				int b = o2.getCommentNo();
				if(a<b) {
					return -1;
				}else {
					return 1;
				}
			};
		});
		
		//log.info("comment sorted:",comments);
		
		
		return "community/freeDetail";

	}


	@GetMapping("/writefree")
	public String writeFree( Model model,@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		if(loginMember == null) {
			model.addAttribute("msg", "로그인후 조회하실 수 있습니다.");
			model.addAttribute("location", "/loginView");
			return "/common/msg";
		}
		
		model.addAttribute("loginMember",loginMember);
		log.info("loginMember : " + loginMember.toString());
		
		
		return "community/freeWrite";
	}
	 
	 @PostMapping("/writefree")
	 public String writeFree(HttpServletRequest request,@RequestParam("upfile") MultipartFile upfile,
			 @SessionAttribute(name = "loginMember", required = false) Member loginMember,Freeboard board, Model model) {

		if(loginMember == null || (loginMember.getUserNo()==board.getUserNo()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/uploaded";
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
			
			if(renameFileName != null) {
				board.setFileOriginal(upfile.getOriginalFilename());
				board.setFileRenamed(renameFileName);
			}
		}
		board.setUserNo(loginMember.getUserNo());
		 
		//log.info("게시그 ㄹ: " + board);
		int result = service.insertBoard(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
		}else{
			model.addAttribute("msg", "게시글이 작성에 실패하였습니다.");
		}
		  
		model.addAttribute("location", "/community/freeboardList");
		return "/common/msg";
	 }
	 
	 @PostMapping("/writefreeComment")
	 public String writerFreeComment(Model model, FreeBoardComment comment) {
		 log.info("comment:" + comment);
		 int result = service.insertComment(comment);
		 
		 if(result > 0) {
				model.addAttribute("msg", "리플이 등록 되었습니다.");
		 }else {
				model.addAttribute("msg", "리플 작성에 실패하였습니다.");
		 }
		 
		model.addAttribute("location", "/community/freeDetail?freeboardNo=" + comment.getFreeboardNo());
		return "/common/msg";
		 
	 }
	 
	 @GetMapping("/delete")
	 public String deleteBoardReply(Model model, HttpServletRequest request, int freeboardNo
			//@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			) {
		
		log.debug("글삭제 요청");
		String rootPath = request.getSession().getServletContext().getRealPath("uploaded");
		log.info("rootPath:" + rootPath);
		rootPath = rootPath + "/uploaded"; 
		int result = service.deleteBoard(freeboardNo, rootPath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제 실패하였습니다.");
		}
		model.addAttribute("location", "/community/freeboardList");
		return "/common/msg";
	}
	 
	 @RequestMapping("/deleteComment")
	 public String deleteReply(Model model, int commentNo, int freeboardNo
			//@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			) {
		log.debug("댓글 삭제 요청" , commentNo, freeboardNo);
		int result = service.deleteComment(commentNo);
		
		if(result > 0) {
			model.addAttribute("msg", "댓글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "댓글 삭제 실패하였습니다.");
		}
		model.addAttribute("location", "freeDetail?freeboardNo=" + freeboardNo);
		return "/common/msg";
	 }

	 @RequestMapping("/fileDown")
	 public ResponseEntity<Resource> fileDown(
			String fileOriginal,
			String fileRenamed,
			@RequestHeader(name= "user-agent") String userAgent){
		 
		try {
			Resource resource = resourceLoader.getResource("resources/uploaded/" + fileRenamed);
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(fileOriginal, "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(fileOriginal.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	 }
	 
	 @GetMapping("/updatefreeboard")
	 public String updateView(Model model,  int freeboardNo,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember
			) {
	 
		Freeboard board = service.selectBoardByNo(freeboardNo);
		model.addAttribute("loginMember",loginMember);
		if(loginMember.getUserNo() == board.getUserNo()) {
			model.addAttribute("board",board);
			return "community/freeUpdate";
		}else {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/community/freeboardList");
			return "/common/msg";
		}
	 }
		
	 @PostMapping("/updatefreeboard")
	 public String updateBoard(Model model, HttpServletRequest request, Freeboard board,
			 @RequestParam("upfile") MultipartFile upfile,
			 @SessionAttribute(name = "loginMember", required = false) Member loginMember
			) {
			log.info("게시글 수정 요청");
			
			if((loginMember.getUserNo()==board.getUserNo()) == false) {
				model.addAttribute("msg", "잘못된 접근입니다.");
				model.addAttribute("location", "/");
				return "/common/msg";
			}
			
			board.setUserNo(loginMember.getUserNo());
			
			// 파일을 저장하는 로직
			if(upfile != null && upfile.isEmpty() == false) {
				String rootPath = request.getSession().getServletContext().getRealPath("resources");
				String savePath = rootPath + "/uploaded";
				
				// 기존에 파일이 있는 경우 -> 기존 파일 삭제요청 필요!!
				if(board.getFileRenamed() != null) {
					service.deleteFile(savePath + "/" + board.getFileRenamed());
				}
				
				String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
				if(renameFileName != null) {
					board.setFileOriginal(upfile.getOriginalFilename());
					board.setFileRenamed(renameFileName);
				}
			}
			log.debug("board : " + board);
			
			int result = service.insertBoard(board);
			
			if(result > 0) {
				model.addAttribute("msg", "게시글 수정이 정상적으로 성공하였습니다.");
				model.addAttribute("location", "/community/freeDetail?freeboardNo=" + board.getFreeBoardNo());
			}else {
				model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
				model.addAttribute("location", "/community/updatefreeboard?freeboardNo=" + board.getFreeBoardNo());
			}
			return "/common/msg";
	 }
	 
	
	
}
