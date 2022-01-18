package com.gr.ssgb.member.controller;


import java.io.File;
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

import com.google.common.collect.ImmutableList;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.common.TempPasswordUtil;
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.hostclass.model.CategoryVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.ConcernVO;
import com.gr.ssgb.member.model.MailService;
import com.gr.ssgb.member.model.MailVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.member.model.PaymentVO;
import com.gr.ssgb.note.model.NoteService;


@Controller
public class MemberController {
	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final FileUploadUtil fileUploadUtil;
	private MailService mailService;
	private HostClassService hostClassService;
	private HostService hostService;
	private NoteService noteService;
	
	@Autowired
	public MemberController(MemberService memberService, FileUploadUtil fileUploadUtil, MailService mailService,
			HostClassService hostClassService, HostService hostService, NoteService noteService) {
		super();
		this.memberService = memberService;
		this.fileUploadUtil = fileUploadUtil;
		this.mailService = mailService;
		this.hostClassService = hostClassService;
		this.hostService = hostService;
		this.noteService = noteService;
	}



	@RequestMapping(value = "/main")
	public String main() {
		return "/main";
	}


	@RequestMapping(value = "/index")
	public String index(Model model) {
		List<String> area = ImmutableList.<String>builder()
				.add("서울")
				.add("경기")
				.add("인천")
				.add("강원")
				.add("충청")
				.add("세종")
				.add("전라")
				.add("경상")
				.add("제주")
				.build();

		List<CategoryVO> clist = hostClassService.selectCategoryAll();
		model.addAttribute("clist", clist);
		model.addAttribute("area", area);
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
			 session.setAttribute("mNo", memberVo.getmNo());
			 
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
				session.setAttribute("mNo", memberVo.getmNo());
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
				memberVo.setmFilename("default.png");
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
					
					session.setAttribute("mFilename", "default.png");
					session.setAttribute("mId", memberVo.getmId());
					session.setAttribute("snsCheck", snsCheck);
					session.setAttribute("mNickname", memberVo.getmNickname());
					session.setAttribute("uOrh", "u");
					
					session.setAttribute("mNo", memberVo.getmNo());
					
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
					url="/member/editPwd?pwdFlag=snsMember";
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
				session.setAttribute("mNo", vo2.getmNo());
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
				session.setAttribute("mNo", vo2.getmNo());
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
		int mNo = (Integer)session.getAttribute("mNo");
		logger.info("mNo={}", mNo);
		logger.info("회원정보 수정 전 비밀번호 확인화면");
		
		return "member/memberEditChkPwd";
	}
	@GetMapping("member/additional")
	public void additional_get() {
		logger.info("부가정보 입력화면");
	}
	@PostMapping("member/additional")
	public String additional_post(@ModelAttribute MemberVO vo, @RequestParam String snsCheck, HttpServletRequest request, Model model) {
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
			vo.setmOriginalname(mFilename);
			vo.setmFilename(mFilename);
			vo.setmFilesize(0);
			cnt = memberService.updateAdditionalInfo(vo);
		}

		logger.info("부가정보 입력여부, cnt={}, cnt2={}", cnt);
		if(cnt>0 ) {
			msg="부가정보 입력이 완료되었습니다.";
			url="/index";
			HttpSession session = request.getSession();
			session.removeAttribute("hFilename");
			session.removeAttribute("hId");
			session.removeAttribute("h_snsCheck");
			session.removeAttribute("hNickname");
			session.removeAttribute("uOrh");
			
			MemberVO vo2 = memberService.selectMemberById(vo.getmId());
			session.setAttribute("mId", vo2.getmId());
			session.setAttribute("snsCheck", snsCheck);
			session.setAttribute("uOrh", "u");
			session.setAttribute("mFilename", vo2.getmFilename());
			session.setAttribute("mNickname", vo2.getmNickname());
			session.setAttribute("mNo", vo2.getmNo());
		}else{
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
		if(result == 0) {
			result = hostService.selectHostCnt(mId);
		}
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
	public String memberEdit_post(@ModelAttribute MemberVO vo, @RequestParam String oldFileName, HttpServletRequest request, Model model) {
		logger.info("회원정보 수정처리, vo={}", vo);
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
			
			msg="회원정보가 정상적으로 수정되었습니다.";
			url="/dashboard/user/payment/myAccount";
			MemberVO vo2 = memberService.selectMemberById(vo.getmId());
			HttpSession session = request.getSession();
			session.setAttribute("mNickname", vo2.getmNickname());
			if(fileName!=null && !fileName.isEmpty()) {
				session.setAttribute("mFilename", vo2.getmFilename());
			}else {
				session.setAttribute("mFilename", oldFileName);
			}
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
	@GetMapping("member/findPwd")
	public void findPwd_get() {
		logger.info("비밀번호 찾기 화면");
	}
	
	@PostMapping("mail/send")
	public String findPwd_post(@RequestParam String mId, Model model){
		logger.info("임시비밀번호 발급 처리, mId={}", mId);
		int cnt = memberService.selectMemberCnt(mId);
		int cnt2 = hostService.selectHostCnt(mId);
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
			int update =0;
			if(cnt2==1) {
				HostVO hostVo = hostService.selectHostById(mId);
				hostVo.sethPwd(pwd);
				update = hostService.updatePwd(hostVo);
			}
			if(up > 0 && update > 0) {
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
			
		}else if(cnt2==1) {
			HostVO vo = hostService.selectHostById(mId);
			MailVO mailVO = new MailVO();
	    	
			String addr = vo.gethId();
			String nick = "늘솜"+vo.gethNo();
			if(vo.gethNickname()!=null&&!vo.gethNickname().isEmpty()) {
				nick = vo.gethNickname();
			}
			String pwd = TempPasswordUtil.randomPwd();
			vo.sethPwd(pwd);
			int up = hostService.updatePwd(vo);
			if(up > 0) {
				String text = "\r\n안녕하세요 "+nick+"님! \r\n";
				text += "임시비밀번호를 생성해드릴테니 로그인 후 꼭! 비밀번호를 변경해주세요. \r\n";	
				text += nick+"님의 임시비밀번호는 \""+pwd+"\"입니다.";
				mailVO.setAddress(addr);
				mailVO.setTitle("상상공방에서 임시 비밀번호를 안내드립니다.");
				mailVO.setMessage(text);
				
				mailService.sendMail(mailVO);
					
				msg="이메일로 임시 비밀번호를 전송하였습니다. 임시 비밀번호를 확인하시고 비밀번호를 변경해주세요.";
				url="/member/editPwd?editFlag=temp";
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("member/editPwd")
	public void editPwd_get(@RequestParam String pwdFlag, Model model) {
		model.addAttribute("pwdFlag", pwdFlag);
		logger.info("비밀번호 변경 화면");
	}
	
	@PostMapping("member/editPwd")
	public String editPwd_post(@ModelAttribute MemberVO vo, @RequestParam String newPassword, String pwdFlag, Model model) {
		logger.info("비밀번호 변경 처리 화면");
		int result=0;
		int result2=0;
		if(pwdFlag.equals("temp")||pwdFlag.equals("editMember")||pwdFlag.equals("editHost")) {
			result=memberService.checkIdPwd(vo.getmId(), vo.getPwd());
			result2 = hostService.checkIdPwd(vo.getmId(), vo.getPwd());
		}else if(pwdFlag.equals("snsMember")) {
			result=MemberService.LOGIN_OK;
		}else if(pwdFlag.equals("snsHost")) {
			result2 = HostService.LOGIN_OK;
		}
		
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		
		String msg = "작성하신 임시비밀번호가 일치하지 않습니다. 이메일을 다시 확인해주세요.";
		String url="/member/editPwd?pwdFlag="+pwdFlag;
		int up =0;
		int update = 0;
		logger.info("result={}, result2={}", result, result2);
		if(result==MemberService.LOGIN_OK){
			vo.setPwd(newPassword);
			up = memberService.updatePwd(vo);
			if(up>0) {
				if(result2 == hostService.LOGIN_OK) {
					HostVO hostvo = new HostVO();
					hostvo.sethId(vo.getmId());
					hostvo.sethPwd(newPassword);
					
					update = hostService.updatePwd(hostvo);
				}
				msg="비밀번호가 성공적으로 변경되었습니다. 변경된 비밀번호로 로그인해주세요.";
				
				if(pwdFlag.equals("snsMember")||pwdFlag.equals("editMember")) {
					url="/member/askAdditional";
					msg="비밀번호가 성공적으로 설정되었습니다.";
				}else if(pwdFlag.equals("snsHost")||pwdFlag.equals("editHost")) {
					msg="비밀번호가 성공적으로 설정되었습니다.";
					url="/host/hostLogin";
				}else if(pwdFlag.equals("temp")) {
					url="/login/login";
				}
			}else {
				msg="비밀번호 변경에 실패하였습니다.";
			}
		}else if(result2 == HostService.LOGIN_OK) {
			HostVO hostvo = new HostVO();
			hostvo.sethId(vo.getmId());
			hostvo.sethPwd(newPassword);
			
			update = hostService.updatePwd(hostvo);
			
			if(up>0) {
				msg="비밀번호가 성공적으로 변경되었습니다. 변경된 비밀번호로 로그인해주세요.";
				url="/host/hostLogin";
			}else {
				msg="비밀번호 변경에 실패하였습니다.";
			}
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@GetMapping("member/interestClass")
	public String interestClass_get(@ModelAttribute SearchVO searchVo,HttpSession session,Model model) {
		logger.info("관심클래스 보기");
		
		String mId=(String) session.getAttribute("mId");
		//mNo= memberService.selectMno(mId);
		int mNo = (Integer)session.getAttribute("mNo");
        logger.info("mNo={}", mNo);
        searchVo.setmNo(mNo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		List<Map<String,Object>> classlist=hostClassService.selectClassAllContents2(searchVo);
		logger.info("classlist={}", classlist.size());
		
		List<ConcernVO> interest= memberService.selectConcern(mNo);
		
		int totalRecord = hostClassService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("mNo",mNo);
		model.addAttribute("mId",mId);
		model.addAttribute("classlist",classlist);
		model.addAttribute("interest",interest);
		return "member/interestClass";
	}
	
	@RequestMapping("member/interest")
	@ResponseBody
	public int interest(HttpSession session,ConcernVO conVo,@RequestParam(defaultValue = "0") int cNo,Model model) {
		logger.info("ajax 등록 실행");
		
		String mId=(String) session.getAttribute("mId");
		int mNo= memberService.selectMno(mId);
		
		conVo.setmNo(mNo);
		conVo.setcNo(cNo);
		logger.info("mNo={}",mNo);
		logger.info("cNo={}",cNo);
		
		int cnt= memberService.insertConcern(conVo);
		
		logger.info("cnt={}",cnt);
		
		if(cnt>0) {
			logger.info("관심클래스 등록성공");
		}else {
			logger.info("관심클래스 등록실패");
		}
		
		return cnt;
	}
	@RequestMapping("member/interestdelete")
	@ResponseBody
	public int interestdelete(HttpSession session,ConcernVO conVo,@RequestParam(defaultValue = "0") int cNo,Model model) {
		logger.info("ajax 삭제 실행");
		
		
		conVo.setcNo(cNo);
		logger.info("cNo={}",cNo);
		
		int cnt= memberService.deleteConcern(cNo);
		
		logger.info("cnt={}",cnt);
		
		if(cnt>0) {
			logger.info("관심클래스 삭제성공");
		}else {
			logger.info("관심클래스 삭제실패");
		}
		
		return cnt;
	}
	
	@GetMapping("member/deletemember")
	public String deleteMember_get(@ModelAttribute MemberVO memberVo,HttpSession session,Model model) {
		logger.info("회원탈퇴뷰");
		
		String mId=(String) session.getAttribute("mId");
		memberVo= memberService.selectMemberById(mId);
		
		model.addAttribute("memberVo",memberVo);
		return "member/deletemember";
	} 
	
	@PostMapping("member/deletemember")
	public String deleteMember_post( HttpSession session,Model model) {
		logger.info("회원탈퇴실행");
		
		String mId=(String) session.getAttribute("mId");
		int mNo= memberService.selectMno(mId);
		
		//멤버삭제 -> 동시에 concern 관심클래스 목록도 삭제됨
		int cnt1=memberService.deleteMember(mNo);
		
		session.invalidate();
		
		
		return "index";
	} 
	
	@GetMapping("member/memberEditChkPwd2")
	public String memberEditChkPwd2(HttpSession session, Model model) {
		String mId=(String)session.getAttribute("mId");
		MemberVO vo = memberService.selectMemberById(mId);
		
		model.addAttribute("vo", vo);
		logger.info("회원정보 삭제 전 비밀번호 확인화면");
		
		return "member/memberEditChkPwd2";
	}
	
	@PostMapping("member/memberEditChkPwd2")
	public String memberEditChkPwd2_post(@ModelAttribute MemberVO vo, Model model) {
		logger.info("회원정보 삭제 전 비밀번호 확인처리");
		String msg = "비밀번호를 확인해주세요.", url="/member/memberEditChkPwd2";
		int result=memberService.checkIdPwd(vo.getmId(), vo.getPwd());
		logger.info("아이디 비밀번호 체크 결과, result={}",result);
		if(result==MemberService.LOGIN_OK){
			msg="비밀번호 확인이 완료되었습니다.";
			url= "/member/deletemember";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
}
