package com.kh.tour.tour.model.service;

import com.kh.tour.course.model.vo.DetailCourse;
import com.kh.tour.tour.model.vo.DetailCultural;
import com.kh.tour.tour.model.vo.DetailEvent;
import com.kh.tour.tour.model.vo.DetailHotel;
import com.kh.tour.tour.model.vo.DetailRestaurant;
import com.kh.tour.tour.model.vo.DetailShopping;
import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;

public interface DetailService {
	
	int saveDetailTourist (DetailTourist detailTourist);
	
	int saveDetailCultural (DetailCultural detailCultural);
	
	int saveDetailEvent (DetailEvent detailEvent);
	
	int saveDetailSports (DetailSports detailSports);
	
	int saveDetailShopping (DetailShopping detailShopping);
	
	int saveDetailRestaurant (DetailRestaurant detailRestaurant);
	
	int saveDetailHotel (DetailHotel detailHotel);
	
	int saveDetailCourse (DetailCourse detailCourse);
	
}
