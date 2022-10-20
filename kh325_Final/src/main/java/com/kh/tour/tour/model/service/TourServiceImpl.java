package com.kh.tour.tour.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.mapper.TotalTourMapper;
import com.kh.tour.tour.model.vo.Tour;



@Service
public class TourServiceImpl implements TourService{
	
	@Autowired
	private TotalTourMapper mapper;


	@Override
	public List<Tour> getEventList(PageInfo pageInfo, Map<String, String> param, String[] neighbourhood){
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue");
		String searchMonth = param.get("searchMonth");

		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("eventKeyword", searchValue);
		}
		if (searchMonth != null && searchMonth.length() > 0) {
			searchMap.put("eventStartDate", searchMonth);
		}
		if(neighbourhood != null) {
			searchMap.put("neighbourhood", neighbourhood);
		}

		System.out.println(searchMap.toString());
		return mapper.selectEventList(rowBounds, searchMap);
	}
	
	@Override 
	public int getEventCount(Map<String, String> param, String[] neighbourhood) { //{searchType=서울, searchValue=아이폰}
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue");
		String searchMonth = param.get("searchMonth");

		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("eventKeyword", searchValue);
		}
		if (searchMonth != null && searchMonth.length() > 0) {
			searchMap.put("eventStartDate", searchMonth);
		}
		if(neighbourhood != null) {
			searchMap.put("neighbourhood", neighbourhood);
		}

		System.out.println(searchMap.toString());
		 
		return mapper.selectEventListCount(searchMap);
	}

	@Override
	public Tour findByContentId(int contentId) {
		Tour tour = mapper.selectByContentId(contentId);
		return tour;
	}
	
}
