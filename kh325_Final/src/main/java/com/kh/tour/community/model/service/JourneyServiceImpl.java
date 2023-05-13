package com.kh.tour.community.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.mapper.JourneyMapper;
import com.kh.tour.community.model.vo.CommLike;
import com.kh.tour.community.model.vo.Journey;
import com.kh.tour.community.model.vo.JourneyComment;

@Service
public class JourneyServiceImpl implements JourneyService {

	@Autowired
	JourneyMapper mapper;
	
	@Override
	public List<Journey> selectBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		
		String keyword = param.get("keyword");
		String hashKeyword = param.get("hash");
		String sort = param.get("sort");

		if(keyword != null && keyword.length() > 0) {
			searchMap.put("keyword", keyword);
		}
	
		if(hashKeyword != null && hashKeyword.length() > 0) {
			searchMap.put("hashKeyword", hashKeyword);
		}
		if(sort != null && sort.length() > 0) {
			searchMap.put("sort", sort);
		}
		
		return mapper.selectBoardList(rowBounds, searchMap);
	}

	@Override
	public int selectBoardCount(Map<String, String> param) {
		
		Map<String,String> searchMap = new HashMap<String,String>();
		String keyword = param.get("keyword");
		String hashKeyword = param.get("hash");
		
		if(keyword != null && keyword.length() > 0) {
			searchMap.put("keyword", keyword);
		}
	
		if(hashKeyword != null && hashKeyword.length() > 0) {
			searchMap.put("hashKeyword", hashKeyword);
		}
		
		System.out.println(searchMap);
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public Journey selectBoardByNo(int journeyNo) {
		Journey board = mapper.selectBoardByNo(journeyNo);
		board.setCount(board.getCount()+1);
		mapper.updateReadCount(board);
		return board;
	}

	@Override
	public int insertBoard(Journey journey) {
		
		int result = 0;
		if(journey.getJourneyNo() == 0) {
			result = mapper.insertBoard(journey);
		}else {
			result = mapper.updateBoard(journey);
		}
		
		return result;
	}

	@Override
	public int insertComment(JourneyComment comment) {
		return mapper.insertComment(comment);
	}


	@Override
	public int deleteBoard(int journeyNo,String rootPath) {
		
		Journey board = mapper.selectBoardByNo(journeyNo);
		deleteFile(rootPath + "\\" + board.getImgRenamed());
		List<JourneyComment> comments = board.getCommentList();
		
		for(int i=0;i<comments.size();i++) {
			mapper.deleteComment(comments.get(i).getCommentNo());
		}
		
		return mapper.deleteBoard(journeyNo);
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
	public List<String> selectLikeListByNo(int userNo) {
		List<CommLike> list =  mapper.selectLikeListByNo(userNo);
		List<String> likeList = new ArrayList<String>();
		if(list.size()>0) {
			for(CommLike like : list) {
				likeList.add(like.getBoardNo()+"");
			}
		}
		
		return likeList;
	}
	
	@Override
	public int addLikeInfo(Map<String, String> param) {
		return mapper.addLikeInfo(param);
	}
	
	@Override
	public CommLike selectIsLikeByNo(Map<String, String> param) {
		return mapper.selectIsLikeByNo(param);
	}
	
	@Override
	public int deleteLikeByNo(Map<String, String> param) {
		return mapper.deleteLikeByNo(param);
	}
	
	@Override
	public Journey selectBestPost() {
		return mapper.selectBestPost();
	}

}
