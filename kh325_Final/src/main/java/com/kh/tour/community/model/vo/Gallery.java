package com.kh.tour.community.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Gallery {
	private int boardNo;
	private int uno;
	private String title;
	private String originalImage;
	private String renamedImage;
	private String galTag;
	private String status;
	private String boardType;
	
	
	
}
