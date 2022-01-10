package com.gr.ssgb.admin.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.admin.model.AdminService;
import com.gr.ssgb.admin.model.AdminVO;
import com.gr.ssgb.admin.model.MonthVO;
import com.gr.ssgb.admin.model.ProfitVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	private final AdminService adminService;
	
	@Autowired
	public AdminController(AdminService adminService) {
		super();
		this.adminService = adminService;
	}
	
	@GetMapping("/adminLogin")
	public void adminLogin_get() {
		logger.info("관리자 로그인 페이지");
	}
	
	@PostMapping("/adminLogin")
	public String adminLogin_post(@ModelAttribute AdminVO vo, HttpSession session, Model model) {
		logger.info("관리자 로그인 처리 화면");
		
		int result = adminService.checkPwd(vo);
		String msg = "", url ="/admin/adminLogin";
		if(result == AdminService.LOGIN_OK) {
			session.removeAttribute("hFilename");
			session.removeAttribute("hId");
			session.removeAttribute("h_snsCheck");
			session.removeAttribute("hNickname");
			session.removeAttribute("uOrh");
			session.removeAttribute("hFilename");
			session.removeAttribute("hId");
			session.removeAttribute("h_snsCheck");
			session.removeAttribute("hNickname");
			session.setAttribute("adId", vo.getAdId());
			session.setAttribute("adNick", vo.getAdNick());
			session.setAttribute("flag", "admin");
			msg="관리자님 환영합니다.";
			url="/admin/adminIndex";
		}else if(result == AdminService.NON_EXIST_ID){
			msg="존재하지 않는 아이디입니다.";
		}else if(result== AdminService.PWD_DISAGREE){
			msg="비밀번호가 일치하지 않습니다.";
		}else {
			msg="로그인 실패!";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/adminIndex")
	public String adminIndex(Model model) {
		logger.info("관리자 로그인 페이지");
		Date d = new Date();
		int month = d.getMonth()+1;
		logger.info("month={}", month);
		MonthVO monVo = null;
		ProfitVO profitVo = null;
		Map<String, ProfitVO> profitMap = new HashMap<String, ProfitVO>();
		for(int i =0; i < 4; i++) {
			monVo = new MonthVO();
			monVo.setStartDate(month, i);
			int totalProfit = adminService.selectTotalProfit(monVo);
			logger.info("monVo={}", monVo);
			profitVo = new ProfitVO();
			profitVo.setTotalProfit(totalProfit);
			String index = (3-i)+"";
			profitMap.put(index, profitVo);
		}
		model.addAttribute("profitMap", profitMap);
		
		return "admin/adminIndex";
	}

}
