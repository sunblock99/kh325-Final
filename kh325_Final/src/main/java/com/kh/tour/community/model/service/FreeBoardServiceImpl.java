package com.kh.tour.community.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.mapper.FreeboardMapper;
import com.kh.tour.community.model.vo.FreeBoardComment;
import com.kh.tour.community.model.vo.Freeboard;

@Service
public class FreeBoardServiceImpl implements FreeBoardService{

	@Autowired
	private FreeboardMapper mapper;
	
	@Override
	public List<Freeboard> selectBoardList(PageInfo pageInfo, Map<String, String> param) {
		
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			} 
		}
		
		return mapper.selectBoardList(rowBounds, searchMap);
	}

	@Override
	public int selectBoardCount(Map<String, String> param) {
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			} 
		}
		System.out.println(searchMap);
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public Freeboard selectBoardByNo(int freeBoardNo) {
		Freeboard board = mapper.selectBoardByNo(freeBoardNo);
		board.setCount(board.getCount() + 1); // 조회수 늘리는 코드
		mapper.updateReadCount(board);
		return board;
	}

	@Override
	public int insertBoard(Freeboard freeboard) {
		int result = 0;
		
		if(freeboard.getFreeBoardNo() == 0) {
			result = mapper.insertBoard(freeboard);
		}else {
			result = mapper.updateBoard(freeboard);
		}
		return result;
	}

	@Override
	public int insertComment(FreeBoardComment comment) {
		return mapper.insertComment(comment);
	}

	@Override
	public int deleteBoard(int freeBoardNo,String rootPath) {
		Freeboard board = mapper.selectBoardByNo(freeBoardNo);
		deleteFile(rootPath+ "\\" + board.getFileRenamed());
		return mapper.deleteBoard(freeBoardNo);
	}

	@Override
	public int deleteComment(int commentNo) {
		return mapper.deleteComment(commentNo);
	}
	
	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);

		if(folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);

		String originalFileName = upfile.getOriginalFilename();
		String reNameFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS")) 
				 	+ originalFileName.substring(originalFileName.lastIndexOf("."));
		String reNamePath = savePath + "/" + reNameFileName;
		
		// 업로드 된 파일 이름을 바꾸고, 실제 보조기억장치로 데이터를 저장하는 부
		try {
			upfile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}		
		return reNameFileName;
	}
	
	@Override
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Override
	public int selectBoardCountAll() {
		return mapper.selectBoardCountAll();
	}
	
	@Override
	public List<Freeboard> selectBestPost(){
		return mapper.selectBestPost();
	}

}
