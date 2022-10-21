package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HotPlace {

	private String title;
	private String addr1;
	private int contentTypeId;
	private int contentId;
	private String firstImage;
	private int likeCount;
	
}
