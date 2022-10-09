package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.course.model.vo.DetailCourse;

@Mapper
public interface DetailCourseMapper {

	int insertDetailCourse (DetailCourse detailCourse);
}
