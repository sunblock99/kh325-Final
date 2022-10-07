package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourImage {

	private int imageDetailNo; 			// 이미지정보_번호
	private int ContentId; 				// 콘텐츠ID
	private String originImgUrl;        // 원본이미지
	private String imgName;  			// 이미지명
	private String smallImageUrl;       // 썸네일이미지
	private String serialNum;           // 이미지일련번호
}
