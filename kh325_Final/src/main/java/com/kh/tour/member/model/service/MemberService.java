package com.kh.tour.member.model.service;

import com.kh.tour.member.model.vo.Member;

public interface MemberService {
	Member login(String userEmail, String userPassword);

	int save(Member member);

	boolean validate(String userEmail);

	Member findByEmail(String userEmail);

	int delete(int userNo);

	int updatePwd(Member loginMember, String userPassword);

	String getAccessToken(String code);

	Member getUserInfo(String access_Token);

}
