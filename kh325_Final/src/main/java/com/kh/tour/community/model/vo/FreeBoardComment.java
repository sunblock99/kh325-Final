package com.kh.tour.community.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardComment {
	int commentNo;
	int freeboardNo;
	int userNo;
	String userName;
	String content;
	Date postDate;
	String status;
}
