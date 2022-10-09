package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.tour.model.vo.RepeatInfo;

@Mapper
public interface RepeatInfoMapper {

	int insertRepeatInfo (RepeatInfo repeatInfo);
}
