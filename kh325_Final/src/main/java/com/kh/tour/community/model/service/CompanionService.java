package com.kh.tour.community.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.CompanionComment;
import com.kh.tour.member.model.vo.Member;

public interface CompanionService {
	
	List<Companion> selectBoardList(PageInfo pageInfo,Map<String,String> map);
	int selectBoardCount(Map<String,String> map);
	List<CompanionComment> selectCommentByNo(int companionNo, int senderNo);
	int insertBoard(Companion companion);
	int insertComment(CompanionComment companionComment);
	int deleteBoard(int companionNo);
	List<Member> selectCommentSenderList(int companionNo);
	Companion selectCompanionByNo(int companionNo);
}
