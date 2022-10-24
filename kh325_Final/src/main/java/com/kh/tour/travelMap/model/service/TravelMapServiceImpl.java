package com.kh.tour.travelMap.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.mapper.TravelMapMapper;
import com.kh.tour.travelMap.model.vo.CourseMap;
import com.kh.tour.travelMap.model.vo.TravelMap;

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
	public List<TravelMap> getTravelMapList(String contentTypeName) {
		return mapper.selectTravelMapList(contentTypeName);
	}

	@Override
	public List<CourseMap> getCourseMapList() {
		return mapper.selectCourseMapList();
	}
	
	@Override
	public CourseMap getCourseByNo(int contentId) {
		return mapper.selectCourseByNo(contentId);
	}

//	@Override
//	public List<CourseMap> getCourseMapList(int contentId) {
//		
//		return mapper.selectCourseMapList(contentId);
//	}

//	@Override
//	public List<CourseMap> getCourseMapDetailList(int contentId) {
//		return mapper.selectCourseMapDetailList(contentId);
//	}

	// @Override
//	public List<CourseMap> getCourseMapList(Map<String, String> param) {
//		Map<String, String> searchMap = new HashMap<String, String>();
//		String courseType = param.get("courseType");
////		if (courseType != null && courseType.length() > 0) {
//////			String type = param.get("searchType");
////			if (courseType.equals("galTag")) {
////				searchMap.put("galTagKeyword", courseType);
////			} else if (courseType.equals("uno")) {
////				searchMap.put("unoKeyword", courseType);
////			}
////		}
//		
//	      if (courseType != null && courseType.length() > 0) {
//	         searchMap.put("", courseType);
//	      }
//		
//		return mapper.selectCourseMapList(searchMap);
//	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Tour findById(int contentId) {
		Tour tour = mapper.selectTourById(contentId);
		return tour;
	}

	
}
