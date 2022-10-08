package com.kh.tour.community.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
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
import com.kh.tour.community.model.service.CommunityService;
import com.kh.tour.community.model.vo.Gallery;
import com.kh.tour.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/gallery") // 요청 url의 '/board'가 생략되서 사용할수 있다. view는 안먹힌다!!
@Controller
public class GalleryController {
	@Autowired
	private CommunityService service;

	@GetMapping("/list")
	public String list(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}

		PageInfo pageInfo = new PageInfo(page, 10, service.getGalleryCount(param), 10);
		List<Gallery> list = service.getGalleryList(pageInfo, param);

		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/gallery/list";
	}

	@GetMapping("/view")
//	@GetMapping("/board/view")
	public String view(Model model, @RequestParam("uno") int uno) {
		Gallery gallery = service.findByUno(uno);

		if (gallery == null) {
			return "redirect:error";
		}

		model.addAttribute("gallery", gallery);
		return "/gallery/view";
	}

	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error.jsp";
	}

//	@RequestMapping(name = "/write", method = RequestMethod.GET)
	@GetMapping("/write")
	public void writeView() {
		log.info("게시글 페이지 요청");
		// return "/writer";
	}

//	@RequestMapping(name = "/write", method = RequestMethod.POST)
	@PostMapping("/write")
	public String writeGallery(Model model, HttpServletRequest request, // 리쿼스트갖고오는거
			@SessionAttribute(name = "loginMember", required = false) Member loginMember, // 세션갖고오는거
			@ModelAttribute Gallery gallery, // 커맨드객체
			@RequestParam("upfile") MultipartFile upfile // 인자네임으로 맵핑해올때
	) {
		log.info("게시글 작성 요청");

		if (loginMember == null || loginMember.getId().equals(gallery.getWriterId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}

		gallery.setWriterNo(loginMember.getNo());

		// 파일을 저장하는 로직
		if (upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources"); // \src\main\webapp\resources
			String savePath = rootPath + "/upload/gallery";
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
			model.addAttribute("location", "/gallery/list");
		} else {
			model.addAttribute("msg", "이미지 업로드 실패하였습니다.");
			model.addAttribute("location", "/gallery/list");

		}

		return "/common/msg";
	}

	@RequestMapping("/delete")
	public String deleteGallery(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember, int boardNo) {
		log.debug("글 삭제 요청");
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		rootPath = rootPath + "upload/gallery";
		int result = service.deleteGallery(boardNo, rootPath);

		if (result > 0) {
			model.addAttribute("msg", "이미지 삭제가 정상적으로 성공하였습니다.");
		} else {
			model.addAttribute("msg", "이미지 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/gallery/list");

		return "/common/msg";
	}

}
