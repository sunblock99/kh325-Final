package com.kh.tour.tour.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.mapper.TotalTourMapper;
import com.kh.tour.tour.model.vo.Category;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailReview;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.EventHighLike;
import com.kh.tour.tour.model.vo.RepeatInfo;
import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.tour.model.vo.TourImage;
import com.kh.tour.tour.model.vo.TourLike;



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

	@Override //contentId로 공통 + 이미지 + 무장애 조회
	public Tour findByContentId(int contentId) {
		Tour tour = mapper.selectByContentId(contentId);
		return tour;
	}

	
	@Override
	public int getTourCount(Map<String, String> param, String tourType, List<String> areaCode, String cat1, List<String> cat2) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue"); // 검색어
		
		
		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("searchValue", searchValue); //검색어 1개 넣기
		}
		
		String bookingDate = param.get("bookingDate"); //선택한 날짜 2022-10-26 to 2022-11-07
		try {
			String strDate = bookingDate.substring(0,10); //2022-10-26로 자르기
			String endDate = bookingDate.substring(14,24); //2022-11-07로 자르기
			
			String[] strDateArray = strDate.split("-"); //[2022,10,26]로 자르기
			String[] endDateArray = endDate.split("-"); //[2022,11,07]로 자르기
		
			StringBuilder sb1 = new StringBuilder();
			for (int i = 0; i < strDateArray.length; i++) {
				sb1.append(strDateArray[i]);
			}
			
			StringBuilder sb2 = new StringBuilder();
			for (int i = 0; i < endDateArray.length; i++) {
				sb2.append(endDateArray[i]);
			}
			int eventStartDate = Integer.parseInt(sb1.toString()); //int형식 20221026로 만듬
			int eventEndDate = Integer.parseInt(sb2.toString()); //int형식 20221107로 만듬
			
			System.out.println(eventStartDate);
			System.out.println(eventEndDate);
			
			if (eventStartDate != 0 && eventStartDate > 0) {
				searchMap.put("eventStartDate", eventStartDate); // 선택한 시작 날짜넣기 (NUMBER)
			}
			if (eventEndDate != 0 && eventEndDate > 0) {
				searchMap.put("eventEndDate", eventEndDate); // 선택한 끝 날짜넣기 (NUMBER)
			}
			
		} catch (Exception e) {
		}
		try {
			if (tourType != null) {
			int tourType1 = Integer.parseInt(param.get("tourType")); // 투어타입
				searchMap.put("tourType", tourType1); // 투어타입 1개 넣기
			}
		} catch (Exception e) {
		}
		if(areaCode != null) {
			searchMap.put("areaCodeList", areaCode); // 지역코드 리스트 넣기
		}
		if(cat1 != null) {
			searchMap.put("cat1", cat1); // 대분류 1개 넣기
		}
		if(cat2 != null) {
			searchMap.put("cat2List", cat2); // 소분류 리스트 넣기
		}

		System.out.println(searchMap.toString());
		 
		return mapper.selectTourListCount(searchMap);
	}

	@Override
	public List<Tour> getTourList(PageInfo pageInfo, Map<String, String> param, String tourType, List<String> areaCode, String cat1, List<String> cat2) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBound1 = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String searchValue = param.get("searchValue"); // 검색어
		
		
		if (searchValue != null && searchValue.length() > 0) {
			searchMap.put("searchValue", searchValue); //검색어 1개 넣기
		}
		
		String bookingDate = param.get("bookingDate"); //선택한 날짜 2022-10-26 to 2022-11-07
		try {
			String strDate = bookingDate.substring(0,10); //2022-10-26로 자르기
			String endDate = bookingDate.substring(14,24); //2022-11-07로 자르기
			
			String[] strDateArray = strDate.split("-"); //[2022,10,26]로 자르기
			String[] endDateArray = endDate.split("-"); //[2022,11,07]로 자르기
		
			StringBuilder sb1 = new StringBuilder();
			for (int i = 0; i < strDateArray.length; i++) {
				sb1.append(strDateArray[i]);
			}
			
			StringBuilder sb2 = new StringBuilder();
			for (int i = 0; i < endDateArray.length; i++) {
				sb2.append(endDateArray[i]);
			}
			int eventStartDate = Integer.parseInt(sb1.toString()); //int형식 20221026로 만듬
			int eventEndDate = Integer.parseInt(sb2.toString()); //int형식 20221107로 만듬
			
			System.out.println(eventStartDate);
			System.out.println(eventEndDate);
			
			if (eventStartDate != 0 && eventStartDate > 0) {
				searchMap.put("eventStartDate", eventStartDate); // 선택한 시작 날짜넣기 (NUMBER)
			}
			if (eventEndDate != 0 && eventEndDate > 0) {
				searchMap.put("eventEndDate", eventEndDate); // 선택한 끝 날짜넣기 (NUMBER)
			}
			
		} catch (Exception e) {
		}
		try {
			if (tourType != null) {
			int tourType1 = Integer.parseInt(param.get("tourType")); // 투어타입
				searchMap.put("tourType", tourType1); // 투어타입 1개 넣기
			}
		} catch (Exception e) {
		}
		if(areaCode != null) {
			searchMap.put("areaCodeList", areaCode); // 지역코드 리스트 넣기
		}
		if(cat1 != null) {
			searchMap.put("cat1", cat1); // 대분류 1개 넣기
		}
		if(cat2 != null) {
			searchMap.put("cat2List", cat2); // 소분류 리스트 넣기
		}

		System.out.println(searchMap.toString());
		 
		return mapper.selectTourList(rowBound1,searchMap);
	}


	@Override // 관광지 찜하기
	@Transactional(rollbackFor = Exception.class)
	public int insertTourLike(int userNo, int contentId) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		if (userNo != 0 && userNo > 0) {
			searchMap.put("userNo", userNo);
		}
		if (contentId != 0 && contentId > 0) {
			searchMap.put("contentId", contentId);
		}
		return mapper.tourLikeInsert(searchMap);
	}

	
	@Override
	public List<TourLike> selectTourLikeList(int userNo) {
		List<TourLike> tourLike = mapper.selectTourLikeList(userNo);
		return tourLike;
	}

	@Override
	public List<Category> getCat2List(String cat1) {
		List<Category> selectCat2List = mapper.selectCat1List(cat1);
		return selectCat2List;
	}
	
	
	@Override //contentId로 (관광지,문화시설,행사축제,레포츠,쇼핑,음식점) 반복 + 소개 조회 
    public List<RepeatInfo> findDetailByContentId(int contentId) {
        return mapper.selectDetailByContentId(contentId);
    }

	@Override
	public DetailTourist getDetailTourist(int contentId) {
		return mapper.detailTourist(contentId);
	}

	@Override
	public DetailCourse getDetailCourse(int contentId) {
		return mapper.detailCourse(contentId);
	}

	@Override
	public DetailHotel getDetailHotel(int contentId) {
		return mapper.detailHotel(contentId);
	}

	@Override
	public DetailCultural getDetailCultural(int contentId) {
		return mapper.detailCultural(contentId);
	}

	@Override
	public DetailEvent getDetailEvent(int contentId) {
		return mapper.detailEvent(contentId);
	}

	@Override
	public DetailSports getDetailSports(int contentId) {
		return mapper.detailSports(contentId);
	}

	@Override
	public DetailShopping getDetailShopping(int contentId) {
		return mapper.detailShopping(contentId);
	}

	@Override
	public DetailRestaurant getDetailRestaurant(int contentId) {
		return mapper.detailRestaurant(contentId);
	}

	@Override
	public List<TourImage> getTourImage(int contentId) {
		return mapper.tourImage(contentId);
	}

	@Override
	public List<DetailReview> getReviewList(int contentId) {
		return mapper.getReviewList(contentId);
	}
	
	@Override
	public int insertReview(DetailReview detailReview) {
		return mapper.insertReview(detailReview);
	}

	@Override
	public List<EventHighLike> getEventHighLike() {
		return mapper.getEventHighLike();
	}
}

	
	
	
