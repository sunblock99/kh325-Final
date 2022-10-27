package com.kh.tour.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Review {
	private int reviewNo;
	private int userNo;
	private int contentId;
	private int contentTypeId;
	private String title; //콘텐츠명(제목)
	private int star;
	private String content;
}
