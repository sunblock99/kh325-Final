package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.CompanionComment;

@Mapper
public interface CompanionMapper {
	
	List<Companion> selectBoardList(Map<String,String> map);
	int selectBoardCount(Map<String,String> map);
	CompanionComment selectCommentByNo(int companionNo);
	int insertBoard(Companion companion);
	int insertComment(CompanionComment companionComment);
	int deleteBoard(int companionNo);
	
}
