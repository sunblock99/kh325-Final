package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecommCourseDetail {

	private  int     contentId;       			//콘텐츠ID
	private  int     contentTypeId;      		 //콘텐츠ID
	private String detailTitle;
	private String firstImage; 
	private String detailAreaName;
	private String areaName;
	private String overview; 
	private int cntRevStar;
	private String Theme;
	private String schedule;
	private int subNum;
	private String subContentId;
	private String addr1;          				//주소  
	private String subName;
	private String subDetailOverview;
	private String subDetailImg;
	private String mapX;
	private String mapY;
}
