package com.kh.tour.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.tour.common.util.PageInfo;
import com.kh.tour.member.model.vo.Bookmark;
import com.kh.tour.member.model.vo.Member;
import com.kh.tour.member.model.vo.MyCommunity;
import com.kh.tour.member.model.vo.MemMyCourse;
import com.kh.tour.member.model.vo.Review;

@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMember(String userEmail);
	int insertMember(Member member);
	int updateMember(Member member);
	int updatePwd(Map<String, String> map);
	int deleteMember(int userNo);
	int insertKakaoMember(Member member);
	List<Bookmark> bookmark(RowBounds rowBounds, int userNo);
						
	int deleteBookmark(int likeNo);
	List<Review> review(int userNo);
	int deleteReview(int reviewNo);
	List<MyCommunity> communityFreeboard(RowBounds rowBounds,Map<String,String> map);
	List<MyCommunity> communityCompanion(RowBounds rowBounds,Map<String,String> map);
	List<MyCommunity> communityJourney(RowBounds rowBounds,Map<String,String> map);
	int deleteCommunity(int freeboardNo);
	List<MemMyCourse> mycourse(int userNo);
	int selectFreeBoardCount(Map<String,String>map);
	int selectCompBoardCount(Map<String,String>map);
	int selectJourneyBoardCount(Map<String,String>map);
	
	int selectTourBoardCount(Map<String, String> map);
	int selectHotelBoardCount(Map<String, String> map);
	int selectResBoardCount(Map<String, String> map);
	int countBookmark(int userNo);
}

