package com.kh.tour.tour.model.vo;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class DetailReview {
	
	private int reviewNo;	
	private int contentId;	
	private int userNo;	
	private int star;	
	private String content;
	private String userAvatar;
	private String userName;

}
