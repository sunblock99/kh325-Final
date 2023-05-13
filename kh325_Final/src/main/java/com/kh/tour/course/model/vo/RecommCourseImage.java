package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecommCourseImage {
	
	private int contentId;
	private int subNum;
	private int subContentId;
	private String subName;
	private String originImgUrl;        // 원본이미지
	private String smallImageUrl;       // 썸네일이미지

}
