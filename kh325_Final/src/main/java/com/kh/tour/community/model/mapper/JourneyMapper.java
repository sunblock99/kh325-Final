package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.community.model.vo.CommLike;
import com.kh.tour.community.model.vo.Journey;
import com.kh.tour.community.model.vo.JourneyComment;

@Mapper
public interface JourneyMapper {
	List<Journey> selectBoardList(RowBounds rowBounds, Map<String, String> map); //페이징해서 가져오기 위해
	int selectBoardCount(Map<String, String> map);
	Journey selectBoardByNo(int journeyNo); 
	int insertBoard(Journey journey);
	int insertComment(JourneyComment comment);
	int updateBoard(Journey journey);
	int updateReadCount(Journey journey);
	int deleteBoard(int journeyNo);
	int deleteComment(int commentNo);
	List<CommLike> selectLikeListByNo(int userNo);
	int addLikeInfo(Map<String, String> param);
	CommLike selectIsLikeByNo(Map<String, String> param);
	int deleteLikeByNo(Map<String, String> param);
	Journey selectBestPost();
}
