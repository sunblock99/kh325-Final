package com.kh.tour.travelMap.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.mapper.TravelMapMapper;

@Service
public class TravelMapServiceImpl implements TravelMapService {

	// 1. DAO로 만들 때 필요한 선언
//	@Autowired
//	private BoardDao dao;
//	@Autowired
//	private SqlSessionTemplate sqlSession;

	// 2. Mapper 활용할때 필요한 선언
	@Autowired
	private TravelMapMapper mapper;

	@Override
	public List<Tour> getTravelMapList(Map<String, String> param) {

		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if (searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if (type.equals("tour")) {
				searchMap.put("tourKeyword", searchValue);
			} else if (type.equals("restaurant")) {
				searchMap.put("restaurantKeyword", searchValue);
			} else if (type.equals("hotel")) {
				searchMap.put("hotelKeyword", searchValue);

			} else if (type.equals("leports")) {		//레포츠
				searchMap.put("leportsKeyword", searchValue);

			} else if (type.equals("facility")) {		//문화시설	
				searchMap.put("facilityKeyword", searchValue);

			} else if (type.equals("recommend")) {
				searchMap.put("recommendKeyword", searchValue);

			} else if (type.equals("travelCourse")) {
				searchMap.put("travelCourseKeyword", searchValue);

			} else if (type.equals("myCourse")) {
				searchMap.put("myCourseKeyword", searchValue);
			}
		}

		return mapper.selectTravelMapList(searchMap);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Tour findById(int contentId) {
		Tour tour = mapper.selectTourById(contentId);
		return tour;
	}

}
