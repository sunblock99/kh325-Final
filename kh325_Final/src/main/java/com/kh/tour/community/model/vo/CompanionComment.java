package com.kh.tour.community.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanionComment {
	int COMMENT_NO;
	int COMPANION_NO;
	int SENDER_NO;
	String MSG_SEND;
	int RECEIVER_NO;
	String MSG_REC;
	Date POST_DATE;
	String STATUS;
}
