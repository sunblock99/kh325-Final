package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.CompanionComment;
import com.kh.tour.member.model.vo.Member;

@Mapper
public interface CompanionMapper {
	
	List<Companion> selectBoardList(RowBounds rowBounds,Map<String,String> map);
	int selectBoardCount(Map<String,String> map);
	List<CompanionComment> selectCommentByNo(@Param("companionNo") int companionNo,@Param("senderNo") int senderNo);
	int insertBoard(Companion companion);
	int insertComment(CompanionComment companionComment);
	int deleteBoard(int companionNo);
	List<Member> selectCommentSenderList(int companionNo);
	Companion selectCompanionByNo(int companionNo);
}
