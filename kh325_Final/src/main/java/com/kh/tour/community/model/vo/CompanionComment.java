package com.kh.tour.community.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanionComment {
	int commentNo;
	int companionNo;
	int senderNo;
	String senderName;
	String senderImg;
	String msgSend;
	int receiverNo;
	String receiverName;
	String receiverImg;
	String msgRec;
	Date postDate;
	String status;
}
