package com.kh.tour.course.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.course.model.mapper.CourseMapper;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.course.model.vo.MainMyCourse;
import com.kh.tour.course.model.vo.MainRecommCourse;
import com.kh.tour.course.model.vo.MyCourse;
import com.kh.tour.course.model.vo.MyCourseCreate;
import com.kh.tour.course.model.vo.MyCourseDetail;
import com.kh.tour.course.model.vo.MyCourseImage;
import com.kh.tour.course.model.vo.MyCourseRev;
import com.kh.tour.course.model.vo.MyCourseSearch;
import com.kh.tour.course.model.vo.MyCourseSearchIndex;
import com.kh.tour.course.model.vo.RecommCourseDetail;
import com.kh.tour.course.model.vo.RecommCourseImage;
import com.kh.tour.course.model.vo.RecommCourseRev;
import com.kh.tour.tour.model.vo.Tour;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	private CourseMapper courseMapper;

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public List<Tour> findAllCourse() {
	
		return courseMapper.selectAllCourse();
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public Tour findCourseByContentId(int contentId) {
	
		return courseMapper.selectCourseByContentId(contentId);
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public DetailCourse findDetailByContentId(int contentId) {
	
		return courseMapper.selectDetailByContentId(contentId);
	}

	
	@Override
	public List<MainMyCourse> findSortedByRevStar() {
		
		return courseMapper.selectSortedByRevStar();
	}

	@Override
	public List<MyCourseDetail> findMyDetailByContentId(int myCourseNo) {
		
		return courseMapper.selectMyDetailByContentId(myCourseNo);
	}

	@Override
	public List<MainRecommCourse> SortedByRevStar() {
		
		return courseMapper.sortedByRevStar();
	}
	
	
	
	// 나의코스 검색
	@Override
	public List<MyCourseSearch> findMyCourse(PageInfo pageInfo, Map<String, String> param) {
	
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
	      RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
	      
		Map<String, String> searchMap = new HashMap<String, String>();
	      
	      String searchSchedule = param.get("searchSchedule");
	      String searchThema = param.get("searchThema");

	      if (searchSchedule != null && searchSchedule.length() > 0) {
	         searchMap.put("myCourseSchedule", searchSchedule);
	      }
	      if (searchThema != null && searchThema.length() > 0) {
	         searchMap.put("myCourseThema", searchThema);
	      }

		return courseMapper.searchMyCourse(rowBounds, searchMap);
	}

	@Override
	public List<MyCourseSearch> countMyCourse(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
	      
	      String searchSchedule = param.get("searchSchedule");
	      String searchThema = param.get("searchThema");

	      if (searchSchedule != null && searchSchedule.length() > 0) {
	         searchMap.put("myCourseSchedule", searchSchedule);
	      }
	      if (searchThema != null && searchThema.length() > 0) {
	         searchMap.put("myCourseThema", searchThema);
	      }
		return courseMapper.indexMyCourseDetail(searchMap);
	}
	
	@Override
	public List<MyCourseSearch> countMyCoursebyIndex(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
	      
	      String searchSchedule = param.get("searchSchedule");
	      String searchThema = param.get("searchThema");

	      if (searchSchedule != null && searchSchedule.length() > 0) {
	         searchMap.put("myCourseSchedule", searchSchedule);
	      }
	      if (searchThema != null && searchThema.length() > 0) {
	         searchMap.put("myCourseThema", searchThema);
	      }
		
		return courseMapper.indexMyCourseDetail(searchMap);
	}

	
	// 나의 코스 디테일
	@Override
	public List<MyCourseSearch> getDetailMyCourse(int myCourseNo) {
		
		return courseMapper.detailMyCourse(myCourseNo);
	}
	
	
	// 나의코스 리뷰
	@Override
	public List<MyCourseRev> getMyCourseRev(int myCourseNo) {
	
		return courseMapper.detailMyCourseRev(myCourseNo);
	}

	// 나의코스 이미지
	@Override
	public List<MyCourseImage> getMyCourseImage(int myCourseNo) {
		
		return courseMapper.detailMyCourseImage(myCourseNo);
	}
	
	
	//추천코스 검색
	@Override
	public List<MainRecommCourse> findRecommCourse(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
	      RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
	      
	      String searchAreaCode = param.get("searchAreaCode");
	      String searchSigunguCode = param.get("searchSigunguCode");

	      if (searchAreaCode != null && searchAreaCode.length() > 0) {
	         searchMap.put("areaCode", searchAreaCode);
	      }
	      if (searchSigunguCode != null && searchSigunguCode.length() > 0) {
	         searchMap.put("sigunguCode", searchSigunguCode);
	      }
		return courseMapper.searchRecommCourse(rowBounds, searchMap);
	}

	@Override
	public int countRecommCourse(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
	      
	      String searchAreaCode = param.get("searchAreaCode");
	      String searchSigunguCode = param.get("searchSigunguCode");

	      if (searchAreaCode != null && searchAreaCode.length() > 0) {
	         searchMap.put("areaCode", searchAreaCode);
	      }
	      if (searchSigunguCode != null && searchSigunguCode.length() > 0) {
	         searchMap.put("sigunguCode", searchSigunguCode);
	      }
		return courseMapper.countSearchRecommCourse(searchMap);
	}

	@Override
	public List<RecommCourseDetail> getDetailRecommCourse(int contentId) {
		
		return courseMapper.detailRecommCourse(contentId);
	}

	@Override
	public List<RecommCourseImage> getRecommCourseImage(int contentId) {
		
		return courseMapper.detailRecommCourseImage(contentId);
	}

	@Override
	public List<RecommCourseRev> getRecommCourseRev(int contentId) {

		return courseMapper.detailRecommCourseRev(contentId);
	}

	@Override
	public int createCourse(MyCourseCreate myCourseCreate) {
		
		return courseMapper.createCourse(myCourseCreate);
	}

	@Override
	public int deleteCourse(int myCourseNo) {
		
		return courseMapper.deleteCourse(myCourseNo);
	}
	
	@Override
	public int deleteCourseDetail(int myCourseNo) {

		return courseMapper.deleteCourseDetail(myCourseNo);
	}


	@Override
	public int updateCourse(MyCourseCreate myCourseCreate) {
		
		return courseMapper.updateCourse(myCourseCreate);
	}

	@Override
	public int insertContent(int myCourseNo, int contentId, int myCourseSn) {
		
		return courseMapper.insertContent(myCourseNo, contentId, myCourseSn);
	}

	@Override
	public int deleteContent(int myCourseDetailNo) {
	
		return courseMapper.deleteContent(myCourseDetailNo);
	}

	@Override
	public int ascent(int changedSn, int myCourseDetailNo) {
	
		return courseMapper.ascent(changedSn, myCourseDetailNo);
	}

	@Override
	public int descent(int changedSn, int myCourseDetailNo) {
		
		return courseMapper.descent(changedSn, myCourseDetailNo);
	}

	@Override
	public List<MyCourseSearch> getForMyPage(int userNo, int myCourseNo) {

		return courseMapper.selectForMyPage(userNo, myCourseNo);
	}

	@Override
	public List<MyCourseSearch> getForEdit(int myCourseDetailNo) {
		return courseMapper.selectForEdit(myCourseDetailNo);
	}

	@Override
	public List<MyCourseSearch> getForCreate() {
	
		return courseMapper.selectForCreate();
	}

	@Override
	public List<MyCourseSearch> getForMyPageList(int userNo) {
		
		return courseMapper.selectForMyPageList(userNo);
	}

	@Override
    public int writeMyCourseRev(MyCourseRev myCourseRev) {
         return courseMapper.insertMyCourseRev(myCourseRev);
    }


	

	
	
	



}
