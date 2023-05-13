package com.kh.tour.manager.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.tour.manager.model.mapper.ManagerMapper;
import com.kh.tour.manager.model.vo.BoardManager;
import com.kh.tour.manager.model.vo.Manager;
import com.kh.tour.manager.model.vo.ReplyManager;
import com.kh.tour.member.model.vo.Member;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerMapper mapper;
	
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int insertReport(Manager manager) {
		return mapper.insertReport(manager);
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int updateReport(int reportNo) {
		return mapper.updateReport(reportNo);
	}

	@Override
	public List<Manager> allReport() {
		return mapper.selectReport();
	}

	@Override
	public List<Manager> checkReport() {
		return mapper.checkSelectReport();
	}
	
	@Override
	public List<Manager> unCheckReport() {
		return mapper.unCheckSelectReport();
	}

	@Override
	public List<BoardManager> allBoard() {
		return mapper.allBoard();
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int updateBoard(int boardNo, String boardType) {
		if(boardType.equals("GAL")) {
			return mapper.updateGallery(boardNo);
		}
		if(boardType.equals("JB")) {
			return mapper.updateJourney(boardNo);
		}
		if(boardType.equals("CB")) {
			return mapper.updateCompanion(boardNo);
		}
		if(boardType.equals("FB")) {
			return mapper.updateFreeboard(boardNo);
		}

		
		return 0;
	}

	@Override
	public List<Member> allUser() {
		return mapper.allUser();
	}

	@Override
	public void excelUser() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int updateUser(int userNo) {
		return mapper.updateUser(userNo);
	}

	@Override
	public int promotionUser(int userNo) {
		return mapper.promotionUser(userNo);
	}

	
	@Override
	public int countAllUser() {
		return mapper.countAllUser();
	}

	@Override
	public void dashBoard() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReplyManager> allReply() {
		return mapper.allReply();
		
	}

	@Override
	public int deleteReply(int commentNo, String boardType) {
		if(boardType.equals("JB")) {
			return mapper.updateJourneyComment(commentNo);
		}
		if(boardType.equals("CB")) {
			return mapper.updateCompanionComment(commentNo);
		}
		if(boardType.equals("FB")) {
			return mapper.updateFreeboardComment(commentNo);
		}
		return 0;
	}


	@Override
	public int countAllComm() {
		return mapper.countAllComm();
	}

	@Override
	public int countAllCourse() {
		return mapper.countAllCourse();
	}



	
}
