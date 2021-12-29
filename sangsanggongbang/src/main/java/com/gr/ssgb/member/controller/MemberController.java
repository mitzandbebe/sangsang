package com.gr.ssgb.member.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.member.model.PaymentVO;


@Controller
public class MemberController {
	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	@Autowired
	public MemberController(MemberService memberService, FileUploadUtil fileUploadUtil) {
		super();
		this.memberService = memberService;
		this.fileUploadUtil =fileUploadUtil;
	}
	@RequestMapping(value = "/main")
	public String main() {
		return "/main";
	}
	@RequestMapping(value = "/test")
	public String test() {
		return "member/NewFile";
	}
	@RequestMapping(value = "/index")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("/member/register")
	public String register(HttpServletResponse response) {
		Cookie ck5 = new Cookie("mFilename", "");
		ck5.setPath("/");
		ck5.setMaxAge(0); 
		response.addCookie(ck5);
		Cookie ck2 = new Cookie("snsCheck", "");
		ck2.setPath("/");
		ck2.setMaxAge(0); 
		response.addCookie(ck2);
		logger.info("회원가입 화면");
		
		return "/member/register";
	}
	
	@RequestMapping("/member/join")
	public String insertMember(@ModelAttribute MemberVO memberVo,@RequestParam String snsCheck,HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("회원가입 처리화면, vo={}", memberVo);
		
		
		String msg ="회원가입 실패!", url="/member/register";
		int cnt =0;
		/*
		 * int accountCnt = memberService.selectMemberById(memberVo.getmId());
		 * if(accountCnt!=0) { HttpSession session = request.getSession();
		 * session.setAttribute("mId", memberVo.getmId());
		 * session.setAttribute("snsCheck", snsCheck); Cookie ck = new
		 * Cookie("ck_userid", memberVo.getmId()); ck.setPath("/");
		 * ck.setMaxAge(1000*24*60*60); response.addCookie(ck); msg="기존 아이디로 로그인합니다!";
		 * url="/index"; }else {
		 */
			if(snsCheck.equals("n")) {
				cnt = memberService.insertMember(memberVo);
			}else {
				cnt = memberService.insertSnsMember(memberVo);
			}
			logger.info("회원가입 결과, cnt={}", cnt);
			if(cnt > 0) {
				if(snsCheck.equals("y")) {
					Cookie ck5 = new Cookie("mFilename", memberVo.getmFilename());
					ck5.setPath("/");
					ck5.setMaxAge(60*60); 
					response.addCookie(ck5);
				}
				Cookie ck = new Cookie("ck_userid", memberVo.getmId());
				Cookie ck2= new Cookie("snsCheck", snsCheck);
				ck2.setPath("/");
				ck2.setMaxAge(60*60);
				response.addCookie(ck2);
				ck.setPath("/");
				ck.setMaxAge(60*60); 
				response.addCookie(ck);
				HttpSession session = request.getSession();
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				msg="회원가입이 성공적으로 완료되었습니다.";
				url="/member/askAdditional";
			}	
			/* } */
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	
	@RequestMapping(value="login/login")
	public String login_get() {
		logger.info("로그인화면");
		return "login/login";
	}
	
	@RequestMapping(value="/login/loginSubmit")
	public String login_post(@ModelAttribute MemberVO memberVo, String snsCheck, String remember, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		logger.info("로그인처리, memberVo={}, snsCheck={}", memberVo, snsCheck);
		
		String msg ="", url="";
		if(snsCheck.equals("y")) {
			int accountCnt = memberService.selectMemberCnt(memberVo.getmId());
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
					url="/member/askAdditional";
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
		
		return "redirect:/main"; 
	}
	@RequestMapping("member/askAdditional")
	public void ask_additional() {
		logger.info("부가정보 입력여부 확인화면");
	}
	@GetMapping("member/additional")
	public void additional_get() {
		logger.info("부가정보 입력화면");
	}
	@PostMapping("member/additional")
	public String additional_post(@ModelAttribute MemberVO vo, PaymentVO paymentVo, @RequestParam String snsCheck, HttpServletRequest request, Model model) {
		logger.info("부가정보 입력 처리화면");
		
		int cnt = 0;
		String msg = "부가정보 입력 실패!", url ="/member/additional";
		if(snsCheck.equals("n")) {
			String fileName="", originName="";
			long fileSize=0;
			int pathFlag=ConstUtil.UPLOAD_FILE_FLAG;
			try {
				List<Map<String, Object>> fileList 
					= fileUploadUtil.fileUpload(request, pathFlag);
				for(int i=0;i<fileList.size();i++) {
					 Map<String, Object> map=fileList.get(i);
					 
					 fileName=(String) map.get("fileName");
					 originName=(String) map.get("originalFileName");
					 fileSize=(long) map.get("fileSize");				 
				}
				
				logger.info("파일 업로드 성공, fileName={}", fileName);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			vo.setmFilename(fileName);
			vo.setmFilesize(fileSize);
			vo.setmOriginalname(originName);
			
			cnt = memberService.updateAdditionalInfo(vo);
		}else{
			vo.setmOriginalname(vo.getmFilename());
			vo.setmFilesize(0);
			cnt = memberService.updateAdditionalInfo(vo);
		}
		int mNo = memberService.selectMno(vo.getmId());
		paymentVo.setmNo(mNo);
		
		int cnt2 = memberService.insertPayment(paymentVo);
		logger.info("부가정보 입력여부, cnt={}, cnt2={}", cnt, cnt2);
		if(cnt>0 && cnt2>0) {
			msg="부가정보 입력이 완료되었습니다.";
			url="/index";
		}else if(cnt2 <=0){
			msg="결제정보 입력 실패!";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("member/memberEdit")
	public String memberEdit_get(HttpSession session, Model model) {
		logger.info("회원정보 처리화면");
		
		String mId = (String)session.getAttribute("mId");
		
		MemberVO vo = memberService.selectMemberById(mId);
		PaymentVO paymentVo = memberService.selectBasicPayment(vo.getmNo());
		
		model.addAttribute("vo", vo);
		model.addAttribute("payVo", paymentVo);
		
		return "member/memberEdit";
	}
	@ResponseBody
	@RequestMapping("member/ajaxDuplicate")
	public boolean ajax_dup(@RequestParam String mId) {
		logger.info("ajax 아이디 중복확인, 파라미터 mId={}", mId);
		
		int result=memberService.selectMemberCnt(mId);
		logger.info("ajax 아이디 중복확인 결과 result={}", result);
		
		boolean bool=false;  //사용가능
		if(result!=0) {
			bool=true;  //이미 존재한다
		}
		logger.info("bool={}", bool);
		return bool;
	}
}
