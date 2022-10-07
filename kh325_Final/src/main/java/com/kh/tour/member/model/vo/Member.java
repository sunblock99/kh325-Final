package com.kh.tour.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int uNo; //회원번호
	private String uName; //이름
	private String uEmail; //이메일
	private String uPassword; //비밀번호
	private String uPhone; //연락처
	private String uAddress; //주소
	private String uAvatar; //프로필사진
	private String uStatus; //STATUS
	private String managerStatus; //관리자STATUS

}
