package com.kh.tour.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int userNo; //회원번호
	private String userName; //이름
	private String userEmail; //이메일
	private String userPassword; //비밀번호
	private String userPhone; //연락처
	private String userAddress; //주소
	private String userAvatar; //프로필사진
	private String userStatus; //STATUS
	private String managerStatus; //관리자STATUS

}
