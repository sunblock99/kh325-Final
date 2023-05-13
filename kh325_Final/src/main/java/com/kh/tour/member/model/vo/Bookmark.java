package com.kh.tour.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Bookmark {
	private int likeNo;
	private int contentId;
	private int contentTypeId;
	private String title;
	private String image;
	private String address;
	private String overview;
	private int star; 
	
	
	
}