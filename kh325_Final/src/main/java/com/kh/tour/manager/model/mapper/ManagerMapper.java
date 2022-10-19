package com.kh.tour.manager.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.tour.manager.model.vo.BoardManager;
import com.kh.tour.manager.model.vo.Manager;
import com.kh.tour.manager.model.vo.ReplyManager;
import com.kh.tour.member.model.vo.Member;

@Mapper
public interface ManagerMapper {
	int insertReport(Manager manager);

	List<Manager> selectReport();

	int updateReport(int reportNo);

	List<Member> allUser();

	int updateUser(int userNo);

	int promotionUser(int userNo);

	int countAllUser();

	int commAllCount();

	int countFreeBoard();

	int countJourney();

	int countGallery();

	int countAllComm();

	List<BoardManager> allBoard();

	int updateGallery(int boardNo);

	int updateJourney(int boardNo);

	int updateCompanion(int boardNo);

	int updateFreeboard(int boardNo);

	List<Manager> checkSelectReport();

	List<Manager> unCheckSelectReport();

	List<ReplyManager> allReply();

	int updateJourneyComment(int commentNo);

	int updateCompanionComment(int commentNo);

	int updateFreeboardComment(int commentNo);

	int countAllCourse();
}
