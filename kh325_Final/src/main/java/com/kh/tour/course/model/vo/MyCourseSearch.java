package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyCourseSearch {

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
	private int contentId;
	private int contentTypeId;
	private String detailTitle;
	private String addr1; 
	private String firstImage; 
	private int indexNum;
	private String overview;
	private String mapX;           //GPS X좌표          
	private String mapY;           //GPS Y좌표    
	private int detailCntRevStar;
	private int myCourseDetailNo;
	private int myCourseSn;
}
