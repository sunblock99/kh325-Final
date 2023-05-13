package com.kh.tour.manager.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Manager {
	private int reportNo;       // 신고고유번호
	private String boardType;      // 게시글번호
	private String boardNo;        // 게시글 타입
	private String boardName;      // 게시글 제목
	private String userNo;         // 회원번호
	private String userName;         // 회원번호
	private String category;       // 신고유형
	private String reasons;        // 신고사유
	private String status;         // STATUS
}
