package com.kh.tour.main.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MainHotPlace {
	private int contentId;
	private int likeCount;
	private int contentTypeId;
	private String title;
	private String addr1;
	private String firstImage;
}
