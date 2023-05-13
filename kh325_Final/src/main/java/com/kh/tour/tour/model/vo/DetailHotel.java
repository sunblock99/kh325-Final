package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DetailHotel {
	private int contentId;                 // 콘텐츠ID
	private int contentTypeId;             // 콘텐츠타입ID
	private String accomCountLodging;      // 수용가능인원
	private String benikia;                // 베니키아여부
	private String checkInTime;            // 입실시간
	private String checkOutTime;           // 퇴실시간
	private String chkCooking;             // 객실내취사여부
	private String foodPlace;              // 식음료장
	private String goodStay;               // 굿스테이여부
	private String hanok;                  // 한옥여부
	private String infoCenterLodging;      // 문의및 안내
	private String parkingLodging;         // 주차시설
	private String pickUp;                 // 픽업서비스
	private String roomCount;              // 객실수
	private String reservationLodging;     // 예약안내
	private String reservationUrl;         // 예약안내홈페이지
	private String roomType;               // 객실유형
	private String scaleLodging;           // 규모
	private String subFacility;            // 부대시설(기타)
	private String barbecue;               // 바비큐장여부
	private String beauty;                 // 뷰티시설정보
	private String beverage;               // 식음료장여부
	private String bicycle;                // 자전거대여여부
	private String campfire;               // 캠프파이여부
	private String fitness;                // 헬스장여부
	private String karaoke;                // 노래방여부
	private String publicBath;             // 공용샤워실여부
	private String publicPc;               // 공용PC방여부
	private String sauna;                  // 사우나실여부
	private String seminar;                // 세미나실여부
	private String sports;                 // 스포츠시설여부
	private String refundRegulation;       // 환불규정
}                                          
