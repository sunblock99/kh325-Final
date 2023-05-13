package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailSports {
	
	private int contentId; 					// 콘텐츠ID
	private int contentTypeId; 				// 콘텐츠타입ID
	private String accomcountLeports; 		// 수용인원
	private String chkbabycarriageLeports; 	// 유모차대여정보
	private String chkcreditcardLeports; 	// 신용카드가능정보
	private String chkpetLeports; 			// 애완동물동반가능정보
	private String expagerangeLeports; 		// 체험가능연령
	private String infocenterLeports; 		// 문의및안내
	private String openPeriod; 				// 개장기간
	private String parkingfeeLeports; 		// 주차요금
	private String parkingLeports; 			// 주차시설
	private String reservation; 			// 예약안내
	private String restdateLeports; 		// 쉬는날
	private String scaleLeports; 			// 규모
	private String usefeeLeports; 			// 입장료
	private String usetimeLeports; 			// 이용시간
	
} 