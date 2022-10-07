package com.kh.tour.community.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Gallery {
	int board_no;
	int uno;
	String title;
	String originalImage;
	String renamedImage;
	String galTag;
	String status;
	String boardType;
}
