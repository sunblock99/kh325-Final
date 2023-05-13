package com.kh.tour.main.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MainEvent {
	private int contentId;
	private String contentTypeId;
	private String title;
	private int eventEndDate;
	private int eventStartDate;
	private String firstImage;
}
