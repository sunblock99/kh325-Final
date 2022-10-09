package com.kh.tour.tour.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;

@Mapper
public interface DetailMapper {

	int insertDetailTourist (DetailTourist detailTourist);
	
	int insertDetailCultural (DetailCultural detailCultural);
	
	int insertDetailEvent (DetailEvent detailEvent);
	
	int insertDetailSports (DetailSports detailSports);
	
	int insertDetailShopping (DetailShopping detailShopping);
	
	int insertDetailRestaurant (DetailRestaurant detailRestaurant);
	
	int insertDetailHotel (DetailHotel detailHotel);
	
	int insertDetailCourse (DetailCourse detailCourse);
}
