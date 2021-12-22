package com.gr.ssgb.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;


@Controller
public class MemberController {
	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}
	@RequestMapping(value = "/")
	public String main() {
		return "/index2";
	}
	@RequestMapping(value = "/index")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("/member/register")
	public void register() {
		logger.info("회원가입 화면");
	}
	
	@RequestMapping("/member/join")
	public String insertMember(@ModelAttribute MemberVO memberVo, Model model) {
		logger.info("회원가입 처리화면, vo={}", memberVo);
		
		int cnt = memberService.insertMember(memberVo);
		logger.info("회원가입 결과, cnt={}", cnt);
		String msg ="회원가입 실패!", url="/member/register";
		if(cnt > 0) {
			msg="회원가입이 성공적으로 완료되었습니다. 로그인하세요.";
			url="/login/login";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	
	@RequestMapping(value="login/login")
	public void login_get() {
		logger.info("로그인화면");
	}
	
	@RequestMapping(value="/login/loginSubmit")
	public String login_post(@ModelAttribute MemberVO memberVo, String snsCheck, String remember, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		logger.info("로그인처리, memberVo={}, snsCheck={}", memberVo, snsCheck);
		
		String msg ="", url="";
		if(snsCheck.equals("y")) {
			int accountCnt = memberService.selectBySnsId(memberVo.getmId());
			if(accountCnt<1) {
				memberVo.setmId(memberVo.getmId());
				memberVo.setPwd(memberVo.getPwd());
				int cnt = memberService.insertSnsMember(memberVo);
				logger.info("SNS 회원가입 결과, cnt={}", cnt);
				
				if(cnt > 0) {
					HttpSession session = request.getSession();
					session.setAttribute("mId", memberVo.getmId());
					session.setAttribute("snsCheck", snsCheck);
					Cookie ck = new Cookie("ck_userid", memberVo.getmId());
					ck.setPath("/");
					if(remember!=null){ 
						ck.setMaxAge(1000*24*60*60); 
						response.addCookie(ck);
					}else{ 
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
					msg="SNS 계정을 통한 회원가입이 성공적으로 완료되었습니다.";
					url="/index";
				}else {
					msg="비유효한 SNS 계정입니다.";
					url="/login/login";
				}
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				Cookie ck = new Cookie("ck_userid", memberVo.getmId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60); 
					response.addCookie(ck);
				}else{ 
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				msg="로그인 성공!";
				url="/index";
			}
		}else {
			int result=memberService.checkIdPwd(memberVo.getmId(), memberVo.getPwd());
			logger.info("아이디 비밀번호 체크 결과, result={}",result);
			if(result==MemberService.LOGIN_OK){
				HttpSession session = request.getSession();
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				Cookie ck = new Cookie("ck_userid", memberVo.getmId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60);
					response.addCookie(ck);
				}else{
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				msg=memberVo.getmId() + "으로 로그인되었습니다";
				url="/index";
			}else if(result==MemberService.PWD_DISAGREE){
				msg="비밀번호가 일치하지 않습니다";
				url="/login/login";
			}else if(result==MemberService.ID_NONE){
				msg="해당 아이디가 존재하지 않습니다";
				url="/login/login";
			}else{
				msg="로그인 조회 실패";
				url="/login/login";
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리완료!");
		
		session.invalidate();
		
		return "redirect:/";
	}
}