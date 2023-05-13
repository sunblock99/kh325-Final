package com.kh.tour.community.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.vo.Gallery;

public interface GalleryService {
	//Gallery
	int saveGallery(Gallery gallery);
	
	int getGalleryCount(Map<String, String> param);
	
	List<Gallery> getGalleryList(PageInfo pageInfo, Map<String, String> param);
	
	String saveFile(MultipartFile upfile, String savePath);
	
	int deleteGallery(int boardNo, String rootPath);
	
	void deleteFile(String filePath);

	Gallery findByBoardNo(int uno);
}
