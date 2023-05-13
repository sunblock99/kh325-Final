package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyCourseDetail {
	
	private int myCourseDetailNo;
	private int myCourseNo;
	private int contentId;
	private int contentTypeId;
	private int myCourseSn;
	private String title;
	private String addr1;

}
