package com.kh.tour.community.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommLike {
	int likeNo;
	int userNo;
	String boardType;
	int boardNo;
}
