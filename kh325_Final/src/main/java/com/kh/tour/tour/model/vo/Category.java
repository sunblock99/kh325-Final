package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {

	private int categoryCodeSeq; // 순번
	private String cat1; // cat1코드
	private String cat1Name; // cat1이름
	private String cat2; // cat2코드
	private String cat2Name; // cat2이름

}
