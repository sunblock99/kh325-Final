package com.kh.tour.community.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tour.community.model.mapper.CommunityMapper;
import com.kh.tour.community.model.vo.Gallery;
import com.kh.tour.common.util.PageInfo;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveGallery(Gallery gallery) {
		return mapper.insertGallery(gallery);
	}

	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);

		// 저장된 경로에 폴더가 없으면 생성하는 코드
		if (folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);

//		test.txt -> 20220905_121232432.txt
		String originalImage = upfile.getOriginalFilename();
		String renamedImage = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
				+ originalImage.substring(originalImage.lastIndexOf("."));
		String reNamePath = savePath + "/" + renamedImage;

		// 업로드 된 파일 이름을 바꾸고, 실제 보조기억장치로 데이터를 저장하는 부
		try {
			upfile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		return renamedImage;
	}

	@Override
	public List<Gallery> getGalleryList(PageInfo pageInfo, Map<String, String> param) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());

		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if (searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if (type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if (type.equals("galTag")) {
				searchMap.put("galTagKeyword", searchValue);
			} else if (type.equals("uno")) {
				searchMap.put("unoKeyword", searchValue);
			}
		}

		return mapper.selectGalleryList(rowBounds, searchMap);
	}

	@Override
	public int getGalleryCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("galTag")) {
				searchMap.put("galTagKeyword", searchValue);
			} else if(type.equals("uno")) {
				searchMap.put("unoKeyword", searchValue);
			} 
		}
		System.out.println(searchMap);
		return mapper.selectGalleryCount(searchMap);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Gallery findByUno(int uno) {
		Gallery gallery = mapper.selectGalleryByUno(uno);
		return gallery;
	}

	@Override
	public void deleteFile(String filePath) {
		System.out.println(filePath);
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteGallery(int boardNo, String rootPath) {
		Gallery gallery = mapper.selectGalleryByUno(boardNo);
//		Gallery gallery = mapper.selectGalleryByBoardNo(boardNo);
		deleteFile(rootPath + "\\" + gallery.getRenamedImage());
		return mapper.deleteGallery(boardNo);
	}


}
