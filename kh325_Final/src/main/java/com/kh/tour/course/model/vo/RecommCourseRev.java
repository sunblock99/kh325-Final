package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecommCourseRev {

	private int contentId;
	private int userNo;
	private String userName;
	private String userAvatar;
	private int star;
	private String content;
}


