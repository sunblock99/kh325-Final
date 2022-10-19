package com.kh.tour.community.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.tour.community.model.vo.Gallery;

@Mapper
public interface GalleryMapper {
	//Gallery
	int insertGallery(Gallery gallery);
	List<Gallery> selectGalleryList(RowBounds rowBounds, Map<String, String> map);
	int selectGalleryCount(Map<String, String> map);
	Gallery selectGalleryByBoardNo(int boardNo); 
	int deleteGallery(int boardNo);
}
