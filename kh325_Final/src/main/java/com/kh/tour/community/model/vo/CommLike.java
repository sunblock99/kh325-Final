package com.kh.tour.community.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommLike {
	int likeNo;
	int uNo;
	String boardType;
	int boardNo;
}
