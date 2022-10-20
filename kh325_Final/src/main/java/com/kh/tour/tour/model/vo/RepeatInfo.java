package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RepeatInfo {

	private int    reSeq     ;     //반복시퀀스
	private int    contentId  ;    //콘텐츠ID
	private int contentTypeId;     //콘텐츠타입ID
	private int    serialNum  ;    //반복일련번호
	private int    fldgubun   ;    //일련번호
	private String infoName   ;    //제목
	private String infoText   ;    //내용
	
	
	private DetailTourist detailTouristTable   ;    //DetailEvent 객체 삽입
	private DetailCultural detailCulturalTable   ;    //DetailEvent 객체 삽입
	private DetailEvent detailEventTable   ;    //DetailEvent 객체 삽입
	private DetailSports detailSportsTable   ;    //DetailEvent 객체 삽입
	private DetailShopping detailShoppingTable   ;    //DetailEvent 객체 삽입
	private DetailRestaurant detailRestaurantTable   ;    //DetailEvent 객체 삽입
}