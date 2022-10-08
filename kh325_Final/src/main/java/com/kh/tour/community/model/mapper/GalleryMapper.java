package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.community.model.vo.Gallery;

@Mapper
public interface GalleryMapper {
	//Gallery
	List<Gallery> selectGalleryList(RowBounds rowBounds, Map<String, String> map);
	Gallery selectGalleryByUno(int uno); 
	Gallery selectGalleryByBoardNo(int boardNo); 
	int selectGalleryCount(Map<String, String> map);
	int insertGallery(Gallery gallery);
	int deleteGallery(int boardNo);
}
