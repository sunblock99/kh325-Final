package com.kh.tour.event.model.service;

import java.util.List;
import java.util.Map;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.tour.model.vo.Tour;

public interface EventService {

	List<Tour> calendarList(PageInfo pageInfo, Map<String, String> param);

	int getBoardCount(Map<String, String> param);

}
