package com.kh.tour.member.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.member.model.vo.Bookmark;
import com.kh.tour.member.model.vo.MemMyCourse;
import com.kh.tour.member.model.vo.Member;
import com.kh.tour.member.model.vo.MyCommunity;
import com.kh.tour.member.model.vo.Review;

public interface MemberService {
	Member login(String userEmail, String userPassword);

	int save(Member member);

	boolean validate(String userEmail);

	Member findByEmail(String userEmail);

	int delete(int userNo);

	int updatePwd(Member loginMember, String userPassword);

	String getAccessToken(String code);

	Member getUserInfo(String access_Token);

	List<Bookmark> bookmark(PageInfo pageInfo, Map<String, String> param, int userNo);
	
	int deleteBookmark(int likeNo);

	List<Review> review(int userNo);

	int deleteReview(int reviewNo);

	List<MyCommunity> community(PageInfo pageInfo, Map<String,String>map);

	int deleteCommunity(int freeboardNo);

	List<MemMyCourse> mycourse(int userNo);
	
	int selectBoardCount(Map<String,String>map);

	public String saveFile(MultipartFile upfile, String savePath);

	int countBookmark(int userNo);


}
