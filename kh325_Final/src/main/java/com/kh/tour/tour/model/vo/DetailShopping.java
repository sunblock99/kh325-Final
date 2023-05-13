package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class DetailShopping {

	private int contentId;                   //콘텐츠Id
	private int contentTypeId;               //콘텐츠타입Id
	private String chkbabyCarriage;          //유모차대여정보
	private String chkcreditCard;            //신용카드가능정보
	private String chkpetShopping;           //애완동물동반가능정보
	private String  cultureCenter;           //문화센터바로가기
	private String fairDay;                  //장서는날
	private String  infocenterShopping;      //문의및안내
	private String opendateShopping;         //개장일
	private String  openTime;                //영업시간
	private String parkingShopping;          //주차시설
	private String restdateShopping;         //쉬는날
	private String restroom;                 //화장실설명
	private String saleItem;                 //판매품목
	private String saleItemcost;             //판매품목별가격
	private String scaleShopping;            //규모
	private String shopGuide;                 //매장안내
                                             
}

