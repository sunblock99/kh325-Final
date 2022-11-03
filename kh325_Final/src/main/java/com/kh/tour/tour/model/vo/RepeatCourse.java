package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RepeatCourse {

	private int courseDetailNo; // 반복_코스_번호
	private int contentId; // 콘텐츠ID
	private int contentTypeId; // 콘텐츠타입ID
	private int subNum; // 반복일련번호
	private int subcontentId; // 하위콘텐츠ID
	private String subName; // 코스명
	private String subdetailOverview; // 코스개요
	private String subdetailImg; // 코스이미지
	private String subdetailAlt; // 코스이미지설명

}