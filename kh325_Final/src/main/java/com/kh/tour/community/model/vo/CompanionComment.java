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
	String senderAvatar;
	String senderName;
	String msgSend;
	int receiverNo;
	String receiverAvatar;
	String receiverName;
	String msgRec;
	Date postDate;
	String status;
}
