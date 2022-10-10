package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.community.model.vo.FreeBoardComment;
import com.kh.tour.community.model.vo.Freeboard;

@Mapper
public interface FreeboardMapper {
	List<Freeboard> selectBoardList(RowBounds rowBounds, Map<String, String> map); //페이징해서 가져오기 위해
	int selectBoardCount(Map<String, String> map);
	Freeboard selectBoardByNo(int freeBoardNo); 
	int insertBoard(Freeboard freeboard);
	int insertComment(FreeBoardComment comment);
	int updateBoard(Freeboard freeboard);
	int updateReadCount(Freeboard freeboard);
	int deleteBoard(int freeBoardNo);
	int deleteComment(int freeBoardNo);
}
