package com.kh.tour.manager.model.service;

import java.util.List;

import com.kh.tour.manager.model.vo.BoardManager;
import com.kh.tour.manager.model.vo.Manager;
import com.kh.tour.manager.model.vo.ReplyManager;
import com.kh.tour.member.model.vo.Member;

public interface ManagerService {
	int insertReport(Manager manager);

	int updateReport(int reportNo);

	List<Manager> allReport();

	List<BoardManager> allBoard();

	int updateBoard(int boardNo, String boardType);

	List<Member> allUser();

	void excelUser();

	int updateUser(int userNo);

	void dashBoard();

	List<ReplyManager> allReply();

	int deleteReply(int commentNo, String boardType);

	int promotionUser(int userNo);

	int countAllUser();

	int countAllComm();

	List<Manager> checkReport();

	List<Manager> unCheckReport();

	int countAllCourse();




}