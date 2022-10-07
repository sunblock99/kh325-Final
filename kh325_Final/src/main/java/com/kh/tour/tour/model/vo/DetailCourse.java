package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailCourse {
	                                                
	private  int     contentId             ;       //콘텐츠ID
	private  int     contenttypeId         ;       //콘텐츠타입ID
	private  String  distance              ;       //코스총거리
	private  String  infocenterTourcourse  ;       //문의및안내
	private  String  schedule              ;       //코스일정
	private  String  takeTime              ;       //코스총소요시간
	private  String  theme                 ;       //코스테마
	
}
