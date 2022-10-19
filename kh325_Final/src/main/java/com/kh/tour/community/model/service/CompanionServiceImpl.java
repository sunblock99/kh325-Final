package com.kh.tour.community.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.mapper.CompanionMapper;
import com.kh.tour.community.model.vo.Companion;
import com.kh.tour.community.model.vo.CompanionComment;
import com.kh.tour.member.model.vo.Member;

@Service
public class CompanionServiceImpl implements CompanionService {
	
	
	@Autowired
	CompanionMapper mapper;
	@Override
	public List<Companion> selectBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("departureDate");
		if(searchValue != null && searchValue.length() > 0) {
			searchMap.put("departureDate", searchValue);
		}
		
		searchValue = param.get("area");
		
		if(searchValue != null && searchValue.length() > 0) {
			searchMap.put("area", searchValue);
		}
		
		return mapper.selectBoardList(rowBounds,searchMap);
		
	}

	@Override
	public int selectBoardCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String date = param.get("departureDate");
		String area = param.get("area");
		
		if(date != null && date.length() > 0) {
			searchMap.put("departureDate", date);
		}
		if(area != null && area.length() > 0) {
			searchMap.put("area", area);
		}
		
		System.out.println(searchMap);
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public List<CompanionComment> selectCommentByNo(int companionNo, int senderNo) {
		return mapper.selectCommentByNo(companionNo,senderNo);
	}

	@Override
	public int insertBoard(Companion companion) {
		int result = 0;
		
		if(companion.getCompanionNo() == 0) {
			result = mapper.insertBoard(companion);
		}
		return result;
	}

	@Override
	public int insertComment(CompanionComment companionComment) {
		return mapper.insertComment(companionComment);
	}

	@Override
	public int deleteBoard(int companionNo) {
		return mapper.deleteBoard(companionNo);
	}
	
	@Override
	public List<Member> selectCommentSenderList(int companionNo){
		return mapper.selectCommentSenderList(companionNo);
	}
	
	@Override
	public Companion selectCompanionByNo(int companionNo) {
		return mapper.selectCompanionByNo(companionNo);
	}
}
