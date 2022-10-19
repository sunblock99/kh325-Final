package com.kh.tour.community.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.vo.CommLike;
import com.kh.tour.community.model.vo.Journey;
import com.kh.tour.community.model.vo.JourneyComment;

public interface JourneyService {
	List<Journey> selectBoardList(PageInfo pageInfo, Map<String, String> param); //페이징해서 가져오기 위해
	int selectBoardCount(Map<String, String> map);
	Journey selectBoardByNo(int journeyNo); 
	int insertBoard(Journey journey);
	int insertComment(JourneyComment comment);
	int deleteBoard(int journeyNo,String rootPath);
	int deleteComment(int commentNo);
	void deleteFile(String filePath); 
	String saveFile(MultipartFile upfile, String savePath);
	List<String> selectLikeListByNo(int userNo);
	int addLikeInfo(Map<String, String> param);
	CommLike selectIsLikeByNo(Map<String, String> param);
	int deleteLikeByNo(Map<String, String> param);
	Journey selectBestPost();
}
