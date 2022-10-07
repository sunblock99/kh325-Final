package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailTourist {
	private int contentId;            //콘텐츠ID
	private int contentTypeId;        //콘텐츠타입ID
	private int heritage1;            //세계문화유산유무
	private int heritage2;            //세계자연유산유무
	private int heritage3;            //세계기록유산유무
	private String infoCenter;        //문의및안내
	private String openDate;          //개장일
	private String restDate;          //쉬는날
	private String expGuide;          //체험안내
	private String expAgeRange;       //체험가능연령
	private String accomCount;        //수용인원
	private String useSeason;         //이용시기
	private String useTime;           //이용시간
	private String parking;           //주차시설
	private String chkBabyCarriage;   //유모차대여정보
	private String chkCreditCard;     //신용카드가능정보
	private String chkPet;            //애완동물동반가능정보
	
	
	

}
