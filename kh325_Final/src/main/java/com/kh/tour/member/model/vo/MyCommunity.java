package com.kh.tour.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class MyCommunity {
	private String boardType; //게시판 타입
	private int userNo; //회원번호
	private int boardNo; //게시글 번호
	private String title; //제목
	private Date postDate; //게시날짜
	private int count; //조회수
}
