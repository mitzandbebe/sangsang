package com.gr.ssgb.member.controller;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.common.TempPasswordUtil;
import com.gr.ssgb.member.model.MailService;
import com.gr.ssgb.member.model.MailVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.member.model.PaymentVO;


@Controller
public class MemberController {
	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	private MailService mailService;
	
	@Autowired
	public MemberController(MemberService memberService, FileUploadUtil fileUploadUtil, MailService mailService) {
		super();
		this.memberService = memberService;
		this.fileUploadUtil = fileUploadUtil;
		this.mailService = mailService;
	}
	
	
	
	@RequestMapping(value = "/main")
	public String main() {
		return "/main";
	}

	@RequestMapping(value = "/index")
	public String index() {
		return "/index";
	}
	
	
	@RequestMapping(value = "/member/terms")
	public String terms() {
		return "member/terms";
	}
	@RequestMapping(value = "/member/terms2")
	public String terms2() {
		return "member/terms2";
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
		
		 int accountCnt = memberService.selectMemberCnt(memberVo.getmId());
		 if(accountCnt==1 && snsCheck.equals("y")) { 
			 
			 memberVo = memberService.selectMemberById(memberVo.getmId());
			 HttpSession session = request.getSession();
			 session.removeAttribute("hFilename");
			 session.removeAttribute("hId");
			 session.removeAttribute("h_snsCheck");
			 session.removeAttribute("hNickname");
			 session.removeAttribute("uOrh");
			 session.setAttribute("mId", memberVo.getmId());
			 session.setAttribute("snsCheck", snsCheck);
			 session.setAttribute("mFilename", memberVo.getmFilename());
			 session.setAttribute("mNickname", memberVo.getmNickname());
			 session.setAttribute("uOrh", "u");
			 
			 Cookie ck = new Cookie("ck_userid", memberVo.getmId()); ck.setPath("/");
			 ck.setMaxAge(1000*24*60*60); 
			 response.addCookie(ck); 
			 msg="기존 아이디로 로그인합니다!";
			 url="/index"; 
		 }else {
			 
			if(memberVo.getmFilename()==null || memberVo.getmFilename().isEmpty()) {
				memberVo.setmFilename("default.png");
			}
			cnt = memberService.insertSnsMember(memberVo);

			logger.info("회원가입 결과, cnt={}", cnt);
			if(cnt > 0) {
				HttpSession session = request.getSession();
				session.removeAttribute("hFilename");
				session.removeAttribute("hId");
				session.removeAttribute("h_snsCheck");
				session.removeAttribute("hNickname");
				session.removeAttribute("uOrh");
				memberVo = memberService.selectMemberById(memberVo.getmId());
				memberVo.setmNickname("늘찬"+memberVo.getmNo());
				int result = memberService.updateNickname(memberVo);
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				session.setAttribute("mFilename", memberVo.getmFilename());
				session.setAttribute("mNickname", memberVo.getmNickname());
				session.setAttribute("uOrh", "u");
				msg="회원가입이 성공적으로 완료되었습니다.";
				url="/member/askAdditional";
			}	
		} 
		
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
				if(memberVo.getmFilename().equals("undefined")) {
					memberVo.setmFilename("default.png");
				}
				memberVo.setPwd(memberVo.getPwd());
				int cnt = memberService.insertSnsMember(memberVo);
				logger.info("SNS 회원가입 결과, cnt={}", cnt);
				
				if(cnt > 0) {
					HttpSession session = request.getSession();
					session.removeAttribute("hFilename");
					session.removeAttribute("hId");
					session.removeAttribute("h_snsCheck");
					session.removeAttribute("hNickname");
					session.removeAttribute("uOrh");
					memberVo = memberService.selectMemberById(memberVo.getmId());
					memberVo.setmNickname("늘찬"+memberVo.getmNo());
					int result = memberService.updateNickname(memberVo);
					
					session.setAttribute("mFilename", memberVo.getmFilename());
					session.setAttribute("mId", memberVo.getmId());
					session.setAttribute("snsCheck", snsCheck);
					session.setAttribute("mNickname", memberVo.getmNickname());
					session.setAttribute("uOrh", "u");
					
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
				session.removeAttribute("hFilename");
				session.removeAttribute("hId");
				session.removeAttribute("h_snsCheck");
				session.removeAttribute("hNickname");
				session.removeAttribute("uOrh");
				MemberVO vo2 = memberService.selectMemberById(memberVo.getmId());
				session.setAttribute("mFilename", vo2.getmFilename());
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				session.setAttribute("mNickname", vo2.getmNickname());
				session.setAttribute("uOrh", "u");
				Cookie ck = new Cookie("ck_userid", memberVo.getmId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60); 
					response.addCookie(ck);
				}else{ 
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				msg="늘찬님 반가워요!";
				if(vo2.getmNickname()!=null && !vo2.getmNickname().isEmpty()) {
					msg=vo2.getmNickname()+"님 반가워요!";
				}
				url="/index";
			}
		}else {
			int result=memberService.checkIdPwd(memberVo.getmId(), memberVo.getPwd());
			logger.info("아이디 비밀번호 체크 결과, result={}",result);
			if(result==MemberService.LOGIN_OK){
				HttpSession session = request.getSession();
				session.removeAttribute("hFilename");
				session.removeAttribute("hId");
				session.removeAttribute("h_snsCheck");
				session.removeAttribute("hNickname");
				session.removeAttribute("uOrh");
				MemberVO vo2 = memberService.selectMemberById(memberVo.getmId());
				session.setAttribute("mId", memberVo.getmId());
				session.setAttribute("snsCheck", snsCheck);
				session.setAttribute("uOrh", "u");
				session.setAttribute("mFilename", vo2.getmFilename());
				session.setAttribute("mNickname", vo2.getmNickname());
				
				Cookie ck = new Cookie("ck_userid", memberVo.getmId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60);
					response.addCookie(ck);
				}else{
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				msg="늘찬님 반가워요!";
				MemberVO memberVo2 = memberService.selectMemberById(memberVo.getmId());
				if(memberVo2.getmFilename() != null && !memberVo2.getmFilename().isEmpty()) {
					session.setAttribute("mFilename", memberVo2.getmFilename());
				}
				
				if(memberVo2.getmNickname()!=null && !memberVo2.getmNickname().isEmpty()) {
					msg=memberVo2.getmNickname()+"님 반가워요!";
				}
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
		
		return "redirect:/index"; 
	}
	@RequestMapping("member/askAdditional")
	public void ask_additional() {
		logger.info("부가정보 입력여부 확인화면");
	}
	@GetMapping("member/memberEditChkPwd")
	public String memberEditChkPwd(HttpSession session, Model model) {
		String mId=(String)session.getAttribute("mId");
		MemberVO vo = memberService.selectMemberById(mId);
		
		model.addAttribute("vo", vo);
		logger.info("회원정보 수정 전 비밀번호 확인화면");
		
		return "member/memberEditChkPwd";
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
		String mFilename = (String)request.getSession().getAttribute("mFilename");
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
		logger.info("vo={}",vo);
		if(fileName!=null && !fileName.isEmpty()) {
			vo.setmFilename(fileName);
			vo.setmFilesize(fileSize);
			vo.setmOriginalname(originName);
			cnt = memberService.updateAdditionalInfo(vo);
		}else {
			vo.setmOriginalname(vo.getmFilename());
			vo.setmFilename(vo.getmFilename());
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
		logger.info("회원정보 수정화면");
		
		String mId = (String)session.getAttribute("mId");
		
		MemberVO vo = memberService.selectMemberById(mId);
		PaymentVO paymentVo = memberService.selectBasicPayment(vo.getmNo());
		logger.info("vo={}, paymentVo={}", vo, paymentVo);
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
		
		boolean bool=false;
		if(result!=0) {
			bool=true;
		}
		logger.info("bool={}", bool);
		return bool;
	}
	
	@PostMapping("member/memberEditChkPwd")
	public String memberEditChkPwd_post(@ModelAttribute MemberVO vo, Model model) {
		logger.info("회원정보 수정 전 비밀번호 확인처리");
		String msg = "비밀번호를 확인해주세요.", url="/member/memberEditChkPwd";
		int result=memberService.checkIdPwd(vo.getmId(), vo.getPwd());
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		if(result==MemberService.LOGIN_OK){
			msg="비밀번호 확인이 완료되었습니다.";
			url= "/member/memberEdit";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	
	@PostMapping("member/memberEdit")
	public String memberEdit_post(@ModelAttribute MemberVO vo, PaymentVO payVo,@RequestParam String oldFileName, HttpServletRequest request, Model model) {
		logger.info("회원정보 수정처리, vo={},payVo={}", vo, payVo );
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
			
			logger.info("파일 업로드 성공, fileName={}, fileList.size={}", fileName, fileList.size());
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		int cnt = 0;
		if(fileName!=null && !fileName.isEmpty()) {
			vo.setmFilename(fileName);
			vo.setmFilesize(fileSize);
			vo.setmOriginalname(originName);
			logger.info("새로운 업로드! vo={}", vo);
			cnt = memberService.updateAdditionalInfo(vo);
		}else {
			logger.info("기존 업로드! vo={}", vo);
			cnt = memberService.updateAddiWithoutProfile(vo);
			
		}
		
		
		String msg="회원정보 수정에 실패하였습니다.", url="/member/memberEdit";
		
		if(cnt>0) {
			payVo.setmNo(vo.getmNo());
			int cnt3 = memberService.findPaymentCnt(vo.getmNo());
			int cnt2=-1;
			if(cnt3 >=1) {
				cnt2 = memberService.updatePaymentInfo(payVo);
			}else {
				cnt2 = memberService.insertPayment(payVo);
			}
			if(cnt2>0) {
				msg="회원정보가 정상적으로 수정되었습니다.";
				url="/index";
				MemberVO vo2 = memberService.selectMemberById(vo.getmId());
				HttpSession session = request.getSession();
				session.setAttribute("mNickname", vo.getmNickname());
				if(fileName!=null && !fileName.isEmpty()) {
					session.setAttribute("mFilename", vo.getmFilename());
				}else {
					session.setAttribute("mFilename", oldFileName);
				}
				if(fileName!=null && !fileName.isEmpty() 
						&& oldFileName !=null && !oldFileName.isEmpty()) {
					String upPath 
			= fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_FILE_FLAG, request);
					File oldFile = new File(upPath, oldFileName);
					if(oldFile.exists()) {
						boolean bool =oldFile.delete();
						logger.info("프로필사진 수정,파일삭제여부:{}", bool);
					}
				}
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
		
	}
	@GetMapping("member/findPwd")
	public void findPwd_get() {
		logger.info("비밀번호 찾기 화면");
	}
	
	@PostMapping("mail/send")
	public String findPwd_post(@RequestParam String mId, Model model){
		logger.info("임시비밀번호 발급 처리, mId={}", mId);
		int cnt = memberService.selectMemberCnt(mId);
		String msg="존재하지 않는 회원메일입니다.", url="/member/findPwd";
		if(cnt==1) {
			MemberVO vo = memberService.selectMemberById(mId);
			MailVO mailVO = new MailVO();
	    	
			String addr = vo.getmId();
			String nick = "늘찬"+vo.getmNo();
			if(vo.getmNickname()!=null&&!vo.getmNickname().isEmpty()) {
				nick = vo.getmNickname();
			}
			String pwd = TempPasswordUtil.randomPwd();
			vo.setPwd(pwd);
			int up = memberService.updatePwd(vo);
			if(up > 0) {
				String text = "\r\n안녕하세요 "+nick+"님! \r\n";
				text += "임시비밀번호를 생성해드릴테니 로그인 후 꼭! 비밀번호를 변경해주세요. \r\n";	
				text += nick+"님의 임시비밀번호는 \""+pwd+"\"입니다.";
				mailVO.setAddress(addr);
				mailVO.setTitle("상상공방에서 임시 비밀번호를 안내드립니다.");
				mailVO.setMessage(text);
				
				mailService.sendMail(mailVO);
					
				msg="이메일로 임시 비밀번호를 전송하였습니다. 임시 비밀번호를 확인하시고 비밀번호를 변경해주세요.";
				url="/member/editPwd";
			}
			
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	@GetMapping("member/editPwd")
	public void editPwd_get() {
		logger.info("비밀번호 변경 화면");
	}
	
	@PostMapping("member/editPwd")
	public String editPwd_post(@ModelAttribute MemberVO vo, @RequestParam String newPassword, Model model) {
		logger.info("비밀번호 변경 처리 화면");
		
		int result=memberService.checkIdPwd(vo.getmId(), vo.getPwd());
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		
		String msg = "작성하신 임시비밀번호가 일치하지 않습니다. 이메일을 다시 확인해주세요.";
		String url="/member/editPwd";
		if(result==MemberService.LOGIN_OK){
			vo.setPwd(newPassword);
			int up = memberService.updatePwd(vo);
			if(up>0) {
				msg="비밀번호가 성공적으로 변경되었습니다. 변경된 비밀번호로 로그인해주세요.";
				url="/login/login";
			}else {
				msg="비밀번호 변경에 실패하였습니다.";
			}
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@GetMapping("member/temp")
	public void temp() {
		logger.info("테스트 화면");
	}
}
