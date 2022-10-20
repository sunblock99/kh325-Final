package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AreaCode {
	
	private int areaCodeSeq; // 순번
	private int areaCode;	//시코드
	private String areaName; //시이름
	private int sigunguCode; //시군구코드
	private String detailAreaName; //시군구명

}
