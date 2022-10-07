package com.kh.tour.manager.model.vo;

import com.kh.tour.tour.model.vo.DetailEvent;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportList {
	private String reportNo;
	private String boardType;
	private String boardNo;
	private String boardName;
	private String uNo;
	private String category;
	private String reasons;
	private String status;
}
