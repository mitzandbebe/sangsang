package com.gr.ssgb.host.controller;

import java.io.IOException;
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
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;

@Controller
@RequestMapping("/host")
public class HostController {
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	private final HostService hostService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	
	@Autowired
	public HostController(HostService hostService, MemberService memberService, FileUploadUtil fileUploadUtil) {
		super();
		this.hostService = hostService;
		this.memberService = memberService;
		this.fileUploadUtil = fileUploadUtil;
	}
	
	
	@RequestMapping(value = "/hostInfo")
	public void hostInfo() {
		logger.info("호스트 지원 정보 화면");
	}
	
	

	@GetMapping("/hostLogin")
	public void hostLogin_get() {
		logger.info("호스트 로그인 화면");
	}
	@GetMapping("/hostIndex")
	public void hostIndex() {
		logger.info("호스트 메인화면");
	}
	
	@GetMapping("/hostRegister")
	public void hostRegister_get() {
		logger.info("호스트 등록 화면"); 
	}
	
	@PostMapping("/hostLogin")
	public String hostLogin_post(@ModelAttribute HostVO vo, String h_snsCheck, String remember, HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("호스트 로그인 처리화면 vo={}", vo);
		HttpSession session = request.getSession();
		String msg="늘솜 계정생성을 위한 필수정보입력 창으로 이동합니다.", url="/host/hostRegister";
		int hAccountCnt=hostService.selectHostCnt(vo.gethId());
		String new_sns = "n";
		if(hAccountCnt < 1) {
			int accountCnt = memberService.selectMemberCnt(vo.gethId());
			if(h_snsCheck.equals("y")) {
				
				session.setAttribute("hId", vo.gethId());
				session.setAttribute("hFilename", vo.gethFilename());
				session.setAttribute("h_snsCheck", h_snsCheck);
				session.setAttribute("uOrh", "h");

				new_sns="y";
				Cookie ck2 = new Cookie("new_sns", new_sns);
				ck2.setPath("/");
				ck2.setMaxAge(60*60); 
				response.addCookie(ck2);
				Cookie ck = new Cookie("host_userid", vo.gethId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60); 
					response.addCookie(ck);
				}else{ 
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				
				if(accountCnt==1){
					new_sns = "n";
					ck2 = new Cookie("new_sns", new_sns);
					ck2.setPath("/");
					ck2.setMaxAge(60*60); 
					response.addCookie(ck2);
					
					MemberVO memVo=memberService.selectMemberById(vo.gethId());
					if(memVo.getmFilename()!=null && !memVo.getmFilename().isEmpty()) {
						session.setAttribute("hFilename", memVo.getmFilename());
					}
					model.addAttribute("vo", memVo);
					model.addAttribute("h_snsCheck", h_snsCheck);
					
					return "host/hostRegister";
				}
			}else {
				int result = memberService.checkIdPwd(vo.gethId(), vo.gethPwd());
				if(result==MemberService.LOGIN_OK) { 
					MemberVO memVo=memberService.selectMemberById(vo.gethId());
					session.setAttribute("hId", vo.gethId());
					session.setAttribute("hFilename", memVo.getmFilename());
					session.setAttribute("h_snsCheck", h_snsCheck);
					session.setAttribute("uOrh", "h");
					
					
					Cookie ck = new Cookie("host_userid", vo.gethId());
					Cookie ck2 = new Cookie("new_sns", new_sns);
					ck2.setPath("/");
					ck2.setMaxAge(60*60); 
					response.addCookie(ck2);
					
					ck.setPath("/");
					if(remember!=null){ 
						ck.setMaxAge(1000*24*60*60); 
						response.addCookie(ck);
					}else{ 
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
					
					
					model.addAttribute("vo", memVo);
					model.addAttribute("h_snsCheck", h_snsCheck);
					
					
					
					return "host/hostRegister";
					
				}else if(result==MemberService.NON_EXIST_ID) {
					msg="존재하지 않는 아이디입니다.";
				}else if(result==MemberService.PWD_DISAGREE){
					msg="비밀번호가 일치하지 않습니다.";
				}else {
					msg="로그인 실패!";
				}
			}
		}else {
			int result=hostService.checkIdPwd(vo.gethId(), vo.gethPwd());
			
			if(result==HostService.LOGIN_OK) {
				msg="늘솜님 안녕하세요!";
				url="/host/hostChatTest";
				vo = hostService.selectHostById(vo.gethId());
				session.setAttribute("hFilename", vo.gethFilename());
				session.setAttribute("mId", vo.gethId());
				session.setAttribute("h_snsCheck", h_snsCheck);
				session.setAttribute("hNickname", vo.gethNickname());
				session.setAttribute("uOrh", "h");
				
				logger.info("hNickname={}", vo.gethNickname());
				
				if(vo.gethNickname()!=null && !vo.gethNickname().isEmpty()) {
					msg=vo.gethNickname()+"님 반가워요!";
				}
				Cookie ck = new Cookie("host_userid", vo.gethId());
				ck.setPath("/");
				if(remember!=null){ 
					ck.setMaxAge(1000*24*60*60); 
					response.addCookie(ck);
				}else{ 
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
			}else if(result==HostService.ID_NONE) {
				msg="존재하지 않는 아이디입니다.";
				url="/host/hostLogin";
			}else if(result==HostService.PWD_DISAGREE){
				msg="비밀번호가 일치하지 않습니다.";
				url="/host/hostLogin";
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";	
	}
	
	@PostMapping("/hostRegister")
	public String hostRegister_post(@ModelAttribute HostVO vo, @RequestParam String h_snsCheck,HttpServletRequest request, Model model) {
		logger.info("호스트 회원등록 처리, vo={}, h_snsCheck={}", vo, h_snsCheck);
		HttpSession session = request.getSession();
		String hFilename = (String)session.getAttribute("hFilename");
		
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
		if((hFilename==null || !hFilename.isEmpty())&& fileName!=null && !fileName.isEmpty()) {
			vo.sethFilename(fileName);
			vo.sethFilesize(fileSize);
			vo.sethOriginalname(originName);
		}else{
			vo.sethFilename(hFilename);
			vo.sethFilesize(0);
			vo.sethOriginalname(hFilename);
		}

		
			
		
		int cnt = hostService.insertHost(vo);
		String msg="회원등록 실패!", url="/host/hostRegister";
		if(cnt>0) {
			msg="늘솜 회원 계정이 생성되었습니다.";
			url="/host/index";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리완료!");
		
		session.invalidate();
		
		return "redirect:/host/index"; 
	}
	
	@ResponseBody
	@RequestMapping("/ajaxDuplicate")
	public boolean ajax_dup(@RequestParam String hId) {
		logger.info("ajax 아이디 중복확인, 파라미터 hId={}", hId);
		
		int result=hostService.selectHostCnt(hId);
		int result2 = memberService.selectMemberCnt(hId);
		logger.info("ajax 아이디 중복확인 결과 result={}, result2={}", result, result2);
		
		boolean bool=false;
		if(result!=0 || result2!=0) {
			bool=true;
		}
		logger.info("bool={}", bool);
		return bool;
	}
	
	@RequestMapping("/hostChatTest")
	public String hostList(Model model) {
		logger.info("채팅 테스트 화면");
		
		List<HostVO> hlist = hostService.selectAllHost();
		
		model.addAttribute("hlist", hlist); 
		
		return "host/hostChatTest";
	}
	
}
