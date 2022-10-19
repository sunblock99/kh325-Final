package com.kh.tour.community.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Freeboard {
	int freeBoardNo;
	int userNo;
	String userName;
	String title;
	String content;
	String fileOriginal;
	String fileRenamed;
	int count;
	Date postDate;
	String status;
	String boardType;
	List<FreeBoardComment> commentList;
}
