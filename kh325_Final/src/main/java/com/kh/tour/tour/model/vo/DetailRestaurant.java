package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailRestaurant {    
	
	private int 	   contentId           ;  //  콘텐츠ID
	private int 		contenttypeId      ;  //  콘텐츠타입ID
	private String     chkcreditcardFood   ;  //  신용카드가능정보
	private String     discountinfoFood    ;  //  할인정보
	private String     firstMenu           ;  //  대표메뉴
	private String     infocenterFood      ;  //  문의및안내
	private String     kidsFacility        ;  //  어린이놀이방여부
	private String     opendateFood        ;  //  개업일
	private String     opentimeFood        ;  //  영업시간
	private String     packing             ;  //  포장가능
	private String     parkingFood         ;  //  주차시설
	private String     reservationFood     ;  //  예약안내
	private String     restdateFood        ;  //  쉬는날
	private String     scaleFood           ;  //  규모
	private String     seat                ;  //  좌석수
	private String     smoking             ;  //  금연/흡연여부
	private String     treatMenu           ;  //  취급메뉴
	private String     lcnsNo              ;  //  인허가번호
	private int        fldgubun            ;  //  일련번호
	private String     infoName            ;  //  제목
	private String     infoText            ;  //  내용
    private int        serialNum           ;  //  반복일련번호
}
