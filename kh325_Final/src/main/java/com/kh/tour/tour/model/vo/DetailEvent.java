package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailEvent {
	private int contentId;                  //콘텐츠ID
	private int contentTypeId;              //콘텐츠타입ID
	private String sponsor1;                //주최자정보
	private String sponsor1Tel;             //주최자연락처
	private String sponsor2;                //주관사정보
	private String sponsor2Tel;             //주관사연락처
	private int eventEndDate;               //행사종료일
	private String playtTime;               //공연시간
	private String eventPlace;              //행사장소
	private String eventHomePage;           //행사홈페이지
	private String ageLimit;                //관람가능연령
	private String bookingPlace;            //예매처
	private String placeInfo;               //행사장위치안내
	private String subEvent;                //부대행사
	private String program;                 //행사프로그램
	private int eventStartDate;             //행사시작일
	private String useTimeFestival;         //이용요금
	private String discountInfoFestival;    //할인정보
	private String spendTimeFestival;       //관람소요시간
	private String festivalGrade;           //축제등급
}

















