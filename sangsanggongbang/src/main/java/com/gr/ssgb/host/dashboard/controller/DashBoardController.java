package com.gr.ssgb.host.dashboard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.host.dashboard.model.DashBoardService;

@Controller
@RequestMapping("/dashboard/host")
public class DashBoardController {	
	private static final Logger logger
	=LoggerFactory.getLogger(DashBoardController.class);

	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public DashBoardController(DashBoardService dashBoardService) {
		logger.info("정산요청목록 생성자주입");
	}
	
	@RequestMapping("/account")
	public String DashBoardMain() {
		return "/dashboard/host/account";
	}


}
