package com.kh.tour.tour.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	
	private int review_No;	
	private int contentId;	
	private int userNo;	
	private String star;	
	private String content;		

}
