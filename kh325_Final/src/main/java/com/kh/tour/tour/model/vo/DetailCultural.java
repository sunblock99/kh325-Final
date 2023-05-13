package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class DetailCultural {
	private int contentId;                   //콘텐츠ID
	private int contentTypeId;               //콘텐츠타입ID
	private String culScale;                 //규모
	private String useFee;                   //이용요금
	private String discountInfo;             //할인정보
	private String spendTime;                //관람소요시간
	private String parkingFee;               //주차요금
	private String infoCenterCulture;        //문의및안내
	private String accomCountCulture;        //수용인원
	private String useTimeCulture;           //이용시간
	private String restDateCulture;          //쉬는날
	private String parkingCulture;           //주차시설
	private String chkBabyCarriageCulture;   //유모차대여정보
	private String chkPetCulture;            //애완동물동반가능정보
	private String chkCreditCardCulture;     //신용카드가능정보

}
