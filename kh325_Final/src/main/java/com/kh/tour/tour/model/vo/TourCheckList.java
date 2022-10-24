package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class TourCheckList {
	private int contentId;
	private int contentTypeId;
	private String title;
	private String addr1;
	private String firstImage;     //대표이미지 (원본)       
	private String firstImage2;    //대표이미지 (썸네일)      
	private String overview;
	private String cat1;
	private String cat1Name;
	private String cat2;
	private String cat2Name;
	private int eventStartDate;
	private int eventEndDate;
	private int avgStar;
	
	private AreaCode areaCodeTable;      //AreaCode 객체 삽입
	private Category categoryTable;      //Category 객체 삽입
	private DetailEvent detailEventTable;  //DetailEvent 객체 삽입
	private TourFree tourFreeTable;  //TourFree 객체 삽입
	private TourImage tourImageTable;  //TourImage 객체 삽입
	private Reply replyTable;  //Reply 객체 삽입

}
