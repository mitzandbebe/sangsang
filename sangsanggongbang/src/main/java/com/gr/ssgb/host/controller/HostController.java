package com.gr.ssgb.host.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
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

import com.gr.ssgb.admin.model.MonthVO;
import com.gr.ssgb.admin.model.ProfitVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;

@Controller
@RequestMapping("/host")
public class HostController {
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	private final HostService hostService;
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	private final HostClassService hostClassService;
	
	@Autowired
	public HostController(HostService hostService, MemberService memberService, FileUploadUtil fileUploadUtil,
			HostClassService hostClassService) {
		super();
		this.hostService = hostService;
		this.memberService = memberService;
		this.fileUploadUtil = fileUploadUtil;
		this.hostClassService = hostClassService;
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
	public String hostIndex(Model model) {
		logger.info("호스트 메인화면");
		
		List<HostVO> hlist = hostService.selectAllHost();
		
		model.addAttribute("hlist", hlist); 
		
		return "host/hostIndex";
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
				session.removeAttribute("mId");
				session.removeAttribute("snsCheck");
				session.removeAttribute("mFilename");
				session.removeAttribute("mNickname");
				session.removeAttribute("uOrh");
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
					
					if(session.getAttribute("mId")!=null) {
						session.removeAttribute("mId");
						session.removeAttribute("snsCheck");
						session.removeAttribute("mFilename");
						session.removeAttribute("mNickname");
						session.removeAttribute("uOrh");
					}
					
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
					url="host/hostLogin";
				}else if(result==MemberService.PWD_DISAGREE){
					msg="비밀번호가 일치하지 않습니다.";
					url="host/hostLogin";
				}else {
					msg="로그인 실패!";
					url="host/hostLogin";
				}
			}
		}else {
			int result=hostService.checkIdPwd(vo.gethId(), vo.gethPwd());
			
			if(result==HostService.LOGIN_OK) {
				session.removeAttribute("mId");
				session.removeAttribute("snsCheck");
				session.removeAttribute("mFilename");
				session.removeAttribute("mNickname");
				session.removeAttribute("uOrh");
				msg="늘솜님 안녕하세요!";
				url="/host/hostIndex";
				vo = hostService.selectHostById(vo.gethId());
				session.setAttribute("hFilename", vo.gethFilename());
				session.setAttribute("hId", vo.gethId());
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
		
		return "redirect:/host/hostIndex"; 
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
	
	@GetMapping("/hostEditChkPwd")
	public void hostEditChkPwd_get() {
		logger.info("비밀번호 확인화면");
	}
	
	@PostMapping("/hostEditChkPwd")
	public String memberEditChkPwd_post(@ModelAttribute HostVO vo, Model model) {
		logger.info("회원정보 수정 전 비밀번호 확인처리");
		String msg = "비밀번호를 확인해주세요.", url="/host/hostEditChkPwd";
		int result=hostService.checkIdPwd(vo.gethId(), vo.gethPwd());
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		if(result==HostService.LOGIN_OK){
			msg="비밀번호 확인이 완료되었습니다.";
			url= "/host/hostEdit";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	
	@GetMapping("/hostEdit")
	public String hostEdit_get(HttpSession session, Model model) {
		logger.info("호스트 정보 수정화면");
		String hId = (String)session.getAttribute("hId");
		
		HostVO vo = hostService.selectHostById(hId);
		
		model.addAttribute("vo", vo);
		
		return "host/hostEdit";
	}
	
	@PostMapping("/hostEdit")
	public String hostEdit_post(@ModelAttribute HostVO vo, @RequestParam String oldFileName, 
			HttpServletRequest request, Model model) {
		logger.info("호스트 정보 수정처리 vo={}");
		
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
			vo.sethFilename(fileName);
			vo.sethFilesize(fileSize);
			vo.sethOriginalname(originName);
			logger.info("새로운 업로드! vo={}", vo);
			cnt = hostService.updateAdditionalInfo(vo);
		}else {
			logger.info("기존 업로드! vo={}", vo);
			cnt = hostService.updateAddiWithoutProfile(vo);
			
		}
		String msg="호스트정보 수정에 실패하였습니다.", url="/host/hostEdit";
		
		if(cnt>0) {
			msg="호스트정보가 정상적으로 수정되었습니다.";
			url="/host/hostIndex";
			HostVO vo2 = hostService.selectHostById(vo.gethId());
			HttpSession session = request.getSession();
			session.setAttribute("hNickname", vo2.gethNickname());
			session.setAttribute("hFilename", vo2.gethFilename());
			
			if(fileName!=null && !fileName.isEmpty() 
					&& oldFileName !=null && !oldFileName.isEmpty() && !oldFileName.equals("default.png")) {
				String upPath 
		= fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_FILE_FLAG, request);
				File oldFile = new File(upPath, oldFileName);
				if(oldFile.exists()) {
					boolean bool =oldFile.delete();
					logger.info("프로필사진 수정,파일삭제여부:{}", bool);
				}
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/hostChart")
	public String adminIndex(HttpSession session, Model model) {
		logger.info("호스트 차트 페이지");
		String hId = (String)session.getAttribute("hId");
		int hNo = hostService.selectHostNo(hId);

		Date d = new Date();
		int month = d.getMonth()+1;
		logger.info("month={}", month);
		MonthVO monVo = null;
		ProfitVO profitVo = null;
		Map<String, ProfitVO> profitMap = new HashMap<String, ProfitVO>();
		
		for(int i =0; i < 4; i++) {
			monVo = new MonthVO();
			monVo.setStartDate(month, i);
			monVo.sethNo(hNo);
			logger.info("monVo={}", monVo);
			int count = hostService.findClassCnt(monVo);
			logger.info("count={}", count);
			int totalProfit =0;
			if(count>1) {
				totalProfit = hostService.selectMyProfit(monVo);
			}
			profitVo = new ProfitVO();
			profitVo.setTotalProfit(totalProfit);
			String index = (3-i)+"";
			profitMap.put(index, profitVo);
		}
		model.addAttribute("profitMap", profitMap);
		
		return "host/hostChart";
	}
	@RequestMapping("/hostAccount")
	public String myAccount(HttpSession session, Model model) {
		logger.info("호스트 정보 조회화면");

		String hId = (String)session.getAttribute("hId");
		HostVO vo = hostService.selectHostById(hId);
		int classCnt=  hostClassService.selectClassCnt(vo.gethNo());

		String hGrade = "silver";
		vo.sethGrade(hGrade);
		int cnt = 0;
		if(classCnt > 5 && classCnt <= 10) {
			hGrade = "gold";
			vo.sethGrade(hGrade);
			cnt=hostService.updateHGrade(vo);
		}else if(classCnt > 10 && classCnt <= 17) {
			hGrade = "platinum";
			vo.sethGrade(hGrade);
			cnt=hostService.updateHGrade(vo);
		}else if(classCnt > 17) {
			hGrade = "diamond";
			vo.sethGrade(hGrade);
			cnt=hostService.updateHGrade(vo);
		}
		model.addAttribute("vo", vo);
		model.addAttribute("classCnt", classCnt);
		return "host/hostAccount";
	}
	@GetMapping("/hostEditChkPwd2")
	public String hostEditChkPwd2_get(HttpSession session, Model model) {
		logger.info("비밀번호 확인화면");
		
		String hId = (String)session.getAttribute("hId");
		
		HostVO vo = hostService.selectHostById(hId);
		Integer cnt = hostService.selectUndoneClass(vo.gethNo());
		
		if(cnt==null) {
			cnt =0;
		}
		logger.info("미종료 클래스 건수 cnt={}", cnt);
		
		model.addAttribute("cnt", cnt);
		
		return "host/hostEditChkPwd2";
		
	}
	@PostMapping("/hostEditChkPwd2")
	public String hostEditChkPwd2_post(@ModelAttribute HostVO vo, Model model) {
		logger.info("회원탈퇴 수정 전 비밀번호 확인처리");
		String msg = "비밀번호가 일치하지 않습니다.", url="/host/hostEditChkPwd2";
		int result=hostService.checkIdPwd(vo.gethId(), vo.gethPwd());
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		if(result==HostService.LOGIN_OK){
			msg="비밀번호 확인이 완료되었습니다.";
			url= "/host/deleteHost";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
		
	}
	@PostMapping("/deleteHost")
	public String hostDelete(@ModelAttribute HostVO vo, Model model, HttpSession session) {
		logger.info("회원탈퇴 처리");
		String hId = (String)session.getAttribute("hId");
		int hNo = hostService.selectHostNo(vo.gethId());
		int cnt = hostService.deleteHost(hNo);
		String msg="회원탈퇴에 실패하였습니다.", url="/host/deleteHost";
		if(cnt > 0) {
			msg="회원탈퇴되셨습니다. 그동안 이용해주셔서 감사합니다.";
			url = "/index";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
		
	}
}
