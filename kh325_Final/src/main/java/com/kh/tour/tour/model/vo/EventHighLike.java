package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventHighLike {

	private String title;
	private String firstImage;
	private int contentId;
	private int eventLike;

}
