package com.kh.tour.community.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.community.model.vo.Gallery;

public interface CommunityService {
	//Gallery
	int saveGallery(Gallery gallery);
	String saveFile(MultipartFile upfile, String savePath);
	List<Gallery> getGalleryList(PageInfo pageInfo, Map<String, String> param);
	Gallery findByUno(int uno);
	void deleteFile(String filePath);
	int deleteGallery(int boardNo, String rootPath);
	int getGalleryCount(Map<String, String> param);
	
	
}
