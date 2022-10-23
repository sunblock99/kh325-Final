package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MainMyCourse {

	private int rowNum;
	private int cntRevStar;
	private int myCourseNo;
	private int userNo;
	private String userName;
	private String userAvatar;
	private int fullMyCourseNo;
	private String myCourseTitle;
	private String myCourseThema;
	private String myCourseSchedule;
	private String myCourseContent;
	private String myCourseMainImage;
	private String myCourseStatus;
	
}
