package com.kh.tour.main.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MainCommunity {
	private int rownum;
	private int freeboardNo;
	private String boardType;
	private String title;
	private String userName;
	private String postDate;
}
