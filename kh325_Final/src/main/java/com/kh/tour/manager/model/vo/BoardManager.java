package com.kh.tour.manager.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardManager {
	private int boardNo;
	private String title;
	private String content;
	private Date postDate;
	private int userNo;
	private String boardType;
	private String userName;
	private String status;
}
