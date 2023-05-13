package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyCourseImage {

	private int myCourseNo;
	private int contentId;
	private int myCourseSn;
	private String detailTitle;
	private String firstImage;
	private String originImgUrl;        // 원본이미지
	private String smallImageUrl;       // 썸네일이미지
}
