package com.kh.tour.community.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.vo.FreeBoardComment;
import com.kh.tour.community.model.vo.Freeboard;

public interface FreeBoardService {
	List<Freeboard> selectBoardList(PageInfo pageInfo, Map<String, String> param); //페이징해서 가져오기 위해
	int selectBoardCount(Map<String, String> param);
	Freeboard selectBoardByNo(int freeBoardNo); 
	int insertBoard(Freeboard freeboard);
	int insertComment(FreeBoardComment comment);
	int deleteBoard(int freeBoardNo,String rootPath);
	int deleteComment(int commentNo);
	public String saveFile(MultipartFile upfile, String savePath);
	public void deleteFile(String filePath);
	
	int selectBoardCountAll();
	List<Freeboard> selectBestPost();
}
