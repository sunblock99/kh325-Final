package com.kh.tour.member.model.service;

import com.kh.tour.member.model.vo.Member;

public interface MemberService {
	Member login(String userId, String userPwd);

	int save(Member member);

	boolean validate(String userId);

	Member findById(String userId);

	int delete(int userNo);

	int updatePwd(Member loginMember, String userPwd);

	String getAccessToken(String code);

	Member getUserInfo(String access_Token);

}
