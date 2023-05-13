package com.kh.tour.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class TourParsing {
	private int contentId;         //콘텐츠ID         
	private int contentTypeId;     //콘텐츠타입ID       
	private String title;          //콘텐츠명(제목)         
	private String tel;            //전화번호             
	private String telName;        //전화번호명            
	private String homePage;       //홈페이지주소           
	private int bookTour;          //교과서여행지여부      
	private String firstImage;     //대표이미지 (원본)       
	private String firstImage2;    //대표이미지 (썸네일)      
	private int areaCode;          //지역코드 조회       
	private int sigunguCode;       //시군구코드         
	private String cat1;           //대분류              
	private String cat2;           //중분류              
	private String cat3;           //소분류              
	private String addr1;          //주소               
	private String addr2;          //상세주소             
	private int zipCode;           //우편번호          
	private String mapX;           //GPS X좌표          
	private String mapY;           //GPS Y좌표          
	private String mLevel;         //mlevel           
	private String overview;       //개요              
         
}









































