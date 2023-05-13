package com.kh.tour.event.model.service;

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
public class EventServiceImpl implements EventService{

	@Autowired
	TotalTourMapper mapper;
	
	@Override
	public List<Tour> calendarList(PageInfo pageInfo, Map<String, String> param) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		String eventStartDate = param.get("searchMonth");

		if (eventStartDate != null && eventStartDate.length() > 0) {
			searchMap.put("eventStartDate", eventStartDate);
		}
		
		return mapper.calendarList(rowBounds,searchMap);
	}

	@Override
	public int getBoardCount(Map<String, String> param) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String eventStartDate = param.get("searchMonth");

		if (eventStartDate != null && eventStartDate.length() > 0) {
			searchMap.put("eventStartDate", eventStartDate);
		}
		
		return mapper.getCalendarCount(searchMap);
	}

}
