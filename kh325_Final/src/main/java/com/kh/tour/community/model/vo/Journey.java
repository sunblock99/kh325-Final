package com.kh.tour.community.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Journey {
	int journeyNo;
	int userNo;
	String userAvatar;
	String userName;
	String title;
	String subTitle;
	String hashTag;
	String content;
	String imgOriginal;
	String imgRenamed;
	Date postDate;
	String status;
	int count;
	String boardType;
	List<JourneyComment> commentList;
	boolean like;
}
