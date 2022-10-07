package com.kh.tour.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.tour.tour.model.service.TourService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService service;
}
