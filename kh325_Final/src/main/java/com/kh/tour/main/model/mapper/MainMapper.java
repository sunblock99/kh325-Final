package com.kh.tour.main.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.main.model.vo.MainCommunity;

@Mapper
public interface MainMapper {
	
	List<MainCommunity> selectMainCommunityList();

}
