package com.kh.tour.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor


public class MemMyCourse {
	private int mycourseNo;
	private int userNo;
	private String mycourseContent;
	private String mycourseTitle;
	private String mycourseMainimage;
}
