package com.kh.tour.community.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.api.GalleryApi;
import com.kh.tour.community.model.service.GalleryService;
import com.kh.tour.community.model.vo.Gallery;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/community") // 요청 url의 '/board'가 생략되서 사용할수 있다. view는 안먹힌다!!
@Controller
public class GalleryController {
	@Autowired
	private GalleryService service;
	
	@GetMapping("/insertGallery.do")
//	@RequestMapping("/insertGallery.do")
	public String initTourApi(Model model) {

		int result = 0;

		while (true) {
			List<Gallery> list = GalleryApi.callGalleryByXML();
			if (list == null || list.isEmpty()) {
				continue;
			}

			for (Gallery gallery : list) {
				result = service.saveGallery(gallery);
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

	@GetMapping("gallery")
//	@GetMapping("/list")
	public String list(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		System.out.println("파라미터값 : " + param.toString());
		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		PageInfo pageInfo = new PageInfo(page, 5, service.getGalleryCount(param), 12);
		List<Gallery> list = service.getGalleryList(pageInfo, param);
		int count = service.getGalleryCount(param);
		System.out.println("갤러리 : " + list);
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/community/gallery";
	}
	
//	@RequestMapping(name = "/write", method = RequestMethod.GET)
	@GetMapping("/writeGallery")
	public void writeView() {
		log.info("게시글 페이지 요청");
		// return "/writer";
	}

	// 리플 참고해서 작성해본거
	@PostMapping("/uploadGallery")
	public String writeReply(Model model, HttpServletRequest request,	//리쿼스트갖고오는거
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,	//세션갖고오는거
			@ModelAttribute Gallery gallery	//커맨드객체
			) {
		log.info("게시글 작성 요청");
		
		if((loginMember.getUserNo() == gallery.getUno()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		gallery.setBoardNo(loginMember.getUserNo());
		
		log.debug("gallery : " + gallery);
		
		int result = service.saveGallery(gallery);
		
		if(result > 0) {
			model.addAttribute("msg","리플 작성이 정상적으로 성공하였습니다.");
		} else {
			model.addAttribute("msg","리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location","/community/gallery");
		
		return "/common/msg";
	}
	
	
//	@RequestMapping(name = "/write", method = RequestMethod.POST)
	@PostMapping("/writeGallery")
	public String writeGallery(Model model, HttpServletRequest request, // 리쿼스트갖고오는거
			@SessionAttribute(name = "loginMember", required = false) Member loginMember, // 세션갖고오는거
			@ModelAttribute Gallery gallery, // 커맨드객체
			@RequestParam(value="upfile", required=false) MultipartFile upfile // 인자네임으로 맵핑해올때
	) {
		log.info("게시글 작성 요청");

//		if (loginMember == null || loginMember.getUserNo() != gallery.getUno()) {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/");
//			return "/common/msg";
//		}

		gallery.setUno(loginMember.getUserNo());
//		gallery.setUno(10);

		// 파일을 저장하는 로직
		if (upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources"); // \src\main\webapp\resources
			String savePath = rootPath + "/uploaded/gallery";
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드

			if (renameFileName != null) {
				gallery.setOriginalImage(upfile.getOriginalFilename());
				gallery.setRenamedImage(renameFileName);
			}
		}
		log.debug("gallery : " + gallery);

		int result = service.saveGallery(gallery);

		if (result > 0) {
			model.addAttribute("msg", "이미지 업로드 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/community/gallery");
		} else {
			model.addAttribute("msg", "이미지 업로드 실패하였습니다.");
			model.addAttribute("location", "/community/gallery");

		}

		return "/common/msg";
	}

	@RequestMapping("/deleteGallery")
	public String deleteGallery(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember, int boardNo) {
		log.debug("글 삭제 요청");
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		rootPath = rootPath + "uploaded/gallery";
		int result = service.deleteGallery(boardNo, rootPath);

		if (result > 0) {
			model.addAttribute("msg", "이미지 삭제가 정상적으로 성공하였습니다.");
		} else {
			model.addAttribute("msg", "이미지 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/community/gallery");

		return "/common/msg";
	}

	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error.jsp";
	}
	
}
