package com.kh.tour.main.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.main.model.vo.MainCommunity;
import com.kh.tour.main.model.vo.MainEvent;
import com.kh.tour.main.model.vo.MainHotPlace;

@Mapper
public interface MainMapper {
	
	List<MainCommunity> selectMainCommunityList();
	List<MainHotPlace> selectMainHotPlace ();
	List<MainEvent> selectMainEvent();
}
