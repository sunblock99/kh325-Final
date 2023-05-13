package com.kh.tour.manager.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.tour.manager.model.service.ManagerService;
import com.kh.tour.manager.model.vo.BoardManager;
import com.kh.tour.manager.model.vo.Manager;
import com.kh.tour.manager.model.vo.ReplyManager;
import com.kh.tour.member.model.vo.Member;

@Controller
@SessionAttributes("loginMember")
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	private ManagerService service;
	
	
	// 신고 생성
	@PostMapping("/insertReport")
	public String insertReport(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, Manager manager) {
		
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		
		int result = service.insertReport(manager);
		if(result > 0) {
			model.addAttribute("msg", "해당 게시글을 신고하였습니다.");
			model.addAttribute("location", "home");
			return "common/msg";
		}else {
			model.addAttribute("msg", "해당 게시글을 신고하였습니다.");
			model.addAttribute("location", "home");
			return "common/msg";
		}
	}
	
	// 신고 처리
	@RequestMapping("/updateReport")
	public String updateReport(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, int reportNo, int boardNo, String boardType) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = service.updateBoard(boardNo, boardType);
		if(result > 0) {
			service.updateReport(reportNo);
			model.addAttribute("msg", "해당 게시글을 블라인드 처리하였습니다.");
			model.addAttribute("location", "allReport");
			return "common/msg";
		}else {
			service.updateReport(reportNo);
			model.addAttribute("msg", "해당 게시글을 블라인드 처리하지 못하였습니다.");
			model.addAttribute("location", "allReport");
			return "common/msg";
		}
	}
	
	// 신고내역 전체보기
	@GetMapping("/allReport")
	public String allReport(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<Manager> allReport = service.allReport();
		
		model.addAttribute("allReport", allReport);
		return "/manager/allReportManagement";
	}
	
	
	// 블라인드된 신고내역 보기
	@GetMapping("/checkReport")
	public String checkReport(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<Manager> checkReport = service.checkReport();
		
		model.addAttribute("checkReport", checkReport);
		return "/manager/checkReportManagement";
	}
	
	// 비블라인드되어있는 신고내역보기ㅏ
	@GetMapping("/unCheckReport")
	public String unCheckReport(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<Manager> unCheckReport = service.unCheckReport();
		
		model.addAttribute("unCheckReport", unCheckReport);
		return "/manager/unCheckReportManagement";
	}
	
	
	@GetMapping("/allBoard")
	public String allBoard(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<BoardManager> allBoard = service.allBoard();
		
		model.addAttribute("allBoard", allBoard);
		return "/manager/boardManagement";
	}
	
	@GetMapping("/updateBoard")
	public String updateBoard(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, int boardNo, String boardType) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = service.updateBoard(boardNo, boardType);
		if(result > 0) {
			model.addAttribute("msg", "해당 게시글을 블라인드 처리하였습니다.");
			model.addAttribute("location", "allBoard");
			return "common/msg";
		}else {
			model.addAttribute("msg", "해당 게시글을 블라인드 처리하지 못하였습니다.");
			model.addAttribute("location", "allBoard");
			return "common/msg";
		}
	}
	
	@GetMapping("/allUser")
	public String allUser(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<Member> allUser = service.allUser();
		
		model.addAttribute("allUser", allUser);
		return "/manager/userManagement";
	}
	
	@RequestMapping("/excelUser")
	public void excelUser(HttpServletResponse response) throws IOException {
		XSSFWorkbook wb = null;
		Sheet sheet = null;
		Row row = null;
		Cell cell = null; 
		wb = new XSSFWorkbook();
		sheet = wb.createSheet("TOGETHER_USERS");
		
		List<Member> allUser = service.allUser();
		
		
		//첫행   열 이름 표기 
		int cellCount=0;
		row = sheet.createRow(0); //0번째 행
		cell = row.createCell(cellCount++);
		cell.setCellValue("회원번호");
		cell = row.createCell(cellCount++);
		cell.setCellValue("이름");
		cell = row.createCell(cellCount++);
		cell.setCellValue("이메일");
		cell = row.createCell(cellCount++);
		cell.setCellValue("비밀번호");
		cell = row.createCell(cellCount++);
		cell.setCellValue("전화번호");
		cell = row.createCell(cellCount++);
		cell.setCellValue("주소");
		cell = row.createCell(cellCount++);
		cell.setCellValue("프로필사진");
		cell = row.createCell(cellCount++);
		cell.setCellValue("STATUS");
		cell = row.createCell(cellCount++);
		cell.setCellValue("매니저 여부");
		
		
		
		for(int i = 0; i < allUser.size(); i++) {
			row = sheet.createRow(i + 1);  // '열 이름 표기'로 0번째 행 만들었으니까 1번째행부터
			cellCount=0; //열 번호 초기화
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserNo());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserName());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserEmail());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserPassword());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserPhone());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserAddress());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserAvatar());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getUserStatus());
			cell = row.createCell(cellCount++);
			cell.setCellValue(allUser.get(i).getManagerStatus());
		}
		
		// 컨텐츠 타입과 파일명 지정
		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", "attachment;filename=TOGETHER.xlsx");  //파일이름지정.
		//response OutputStream에 엑셀 작성
		wb.write(response.getOutputStream());
	}

		
	
	@RequestMapping("/updateUser")
	public String updateUser(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, int userNo) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = service.updateUser(userNo);
		if(result > 0) {
			model.addAttribute("msg", "해당 회원을 탈퇴처리했습니다.");
			model.addAttribute("location", "allUser");
			return "common/msg";
		}else {
			model.addAttribute("msg", "해당 회원을 탈퇴처리하지 못하였습니다.");
			model.addAttribute("location", "allUser");
			return "common/msg";
		}
	}
	
	@RequestMapping("promotionUser")
	public String promotionUser(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, int userNo) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = service.promotionUser(userNo);
		if(result > 0) {
			model.addAttribute("msg", "해당 회원을 매니저로 임명하였습니다.");
			model.addAttribute("location", "allUser");
			return "common/msg";
		}else {
			model.addAttribute("msg", "해당 회원을 매니저로 임명하지 못했습니다.");
			model.addAttribute("location", "allUser");
			return "common/msg";
		}
	}
	
	@GetMapping("/dashBoard")
	public String dashBoard(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int countAllUser = service.countAllUser();
		List<Manager> reportList = service.allReport();
		int countAllComm = service.countAllComm();
		int countAllCourse = service.countAllCourse();
		
		model.addAttribute("countAllCourse", countAllCourse);
		model.addAttribute("countAllComm", countAllComm);
		model.addAttribute("reportList", reportList);
		model.addAttribute("countAllUser", countAllUser);
		return "/manager/dashBoard";
	}
	
	@RequestMapping("/allReply")
	public String allReply(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<ReplyManager> allReply = service.allReply();

		model.addAttribute("allReply", allReply);
		return "/manager/replyManagement";
	}
	
	@RequestMapping("/deleteReply")
	public String deleteReply(Model model, @SessionAttribute(name= "loginMember", required = false) Member loginMember, int commentNo, String boardType){
		if(loginMember == null || loginMember.getManagerStatus().equals("Y") == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = service.deleteReply(commentNo, boardType);
		
		if(result > 0) {
			model.addAttribute("msg", "해당 댓글을 블라인드 처리하였습니다.");
			model.addAttribute("location", "allReply");
			return "common/msg";
		}else {
			model.addAttribute("msg", "해당 댓글을 블라인드 처리하지 못하였습니다.");
			model.addAttribute("location", "allReply");
			return "common/msg";
	}
	}
	
	
}
