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
	String original_image;
	String renamed_image;
	String gal_tag;
	String status;
	String board_type;
}
