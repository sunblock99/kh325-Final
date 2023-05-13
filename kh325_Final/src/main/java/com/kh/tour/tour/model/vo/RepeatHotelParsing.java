package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class RepeatHotelParsing {
	private int accommoDetailNo;             //반복_숙박_번호
	private int contentId;                   //콘텐츠ID
	private int contentTypeId;               //콘텐츠타입ID
	private int roomCode;                    //객실코드
	private String roomTitle;                //객실명칭
	private int roomSize1;                   //객실크기
	private int roomCount;                   //객실수
	private int roomBaseCount;               //기준인원
	private int roomMaxCount;                //최대인원
	private int roomOffSeasonMinFee1;        //비수기주중최소
	private int roomOffSeasonMinFee2;        //비수기주말최소
	private int roomPeakSeasonMinFee1;       //성수기주중최소
	private int roomPeakSeasonMinFee2;       //성수기주말최소
	private String roomIntro;                //객실소개
	private String  roomBathFacility;        //목욕시설여부
	private String  roomBath;                //욕조여부
	private String  roomHomeTheater;         //홈시어터여부
	private String  roomAircondition;        //에어컨여부
	private String  roomTv;                  //TV 여부
	private String  roomPc;                  //PC 여부
	private String  roomCable;               //케이블설치여부
	private String  roomInternet;            //인터넷여부
	private String  roomRefrigerator;        //냉장고여부
	private String  roomToiletries;          //세면도구여부
	private String  roomSofa;                //소파여부
	private String  roomCook;                //취사용품여부
	private String  roomTable;               //테이블여부
	private String  roomHairdryer;           //드라이기여부
	private long roomSize2;                   //객실크기(평방미터)
	private String roomImg1;                 //객실사진1
	private String roomImg1alt;              //객실사진1 설명
	private String roomImg2;                 //객실사진2
	private String roomImg2alt;              //객실사진2 설명
	private String roomImg3;                 //객실사진3
	private String roomImg3alt;              //객실사진3 설명
	private String roomImg4;                 //객실사진4
	private String roomImg4alt;              //객실사진4 설명
	private String roomImg5;                 //객실사진5
	private String roomImg5alt;              //객실사진5 설명

}
