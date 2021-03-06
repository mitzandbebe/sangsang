package com.gr.ssgb.note.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
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

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.note.model.NoteService;
import com.gr.ssgb.note.model.NoteVO;

@Controller
public class NoteController {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	private final MemberService memberService;
	private final HostService hostService;

	@Autowired
	public NoteController(NoteService noteService, MemberService memberService, HostService hostService) {
		this.noteService = noteService;
		this.memberService = memberService;
		this.hostService = hostService;
	}

	@GetMapping("/note/noteWrite") // 쪽지 보내기 화면 출력
	public String noteWrite_get(HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");
		logger.info("회원 아이디 mId={}, hId", mId, hId);

		MemberVO mVo = new MemberVO();
		HostVO hVo = new HostVO();

		if (mId != null && !mId.isEmpty()) {
			logger.info("회원 아이디 mId={}", mId);
			mVo = memberService.selectMemberById(mId);
		} else if (hId != null && !hId.isEmpty()) {
			logger.info("호스트 아이디 hId={}", hId);
			hVo = hostService.selectHostById(hId);
		}

		logger.info("회원 정보 mVo={}, hVo={}", mVo, hVo);

		model.addAttribute("mVo", mVo);
		model.addAttribute("hVo", hVo);

		return "note/noteWrite";
	}

	@PostMapping("/note/noteWrite") // 쪽지보내기
	public String noteWrite_post(@ModelAttribute NoteVO vo, HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");
		logger.info("쪽지 vo={},mId={},hId={}", vo, mId, hId);

		logger.info("snickname={}", vo.getsNickname());

		String receiveNickname = noteService.selectSendUserM(vo.getrNickname());
		String receiveNicknameH = noteService.selectSendUserH(vo.getrNickname());
		vo.setmId(mId);
		vo.sethId(hId);

		String msg = "해당하는 닉네임이 없습니다", url = "";
		if (mId != null && !mId.isEmpty()) {
			url = "/note/noteWrite?mId=" + mId;
		} else {
			url = "/note/noteWrite?hId=" + hId;
		}
		if ((receiveNickname == null || receiveNickname.isEmpty())
				&& (receiveNicknameH == null || receiveNicknameH.isEmpty())) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/common/message";
		} else {
			logger.info("여긴");
			int cnt = 0;
			if (mId != null && !mId.isEmpty()) {
				MemberVO mVo = memberService.selectMemberById(mId);
				vo.setsNickname(mVo.getmNickname());
				logger.info("보내는사람={}", vo.getsNickname());
				cnt = noteService.sendNote(vo);
				if (cnt > 0) {
					msg = "쪽지를 성공적으로 보냈습니다";
					url = "/note/noteList?mId=" + vo.getmId();
				} else {
					msg = "쪽지를 보내는데 실패했습니다";
				}
			} else if (hId != null && !hId.isEmpty()) {
				HostVO hVo = hostService.selectHostById(hId);
				vo.setsNickname(hVo.gethNickname());
				logger.info("보내는사람={}", vo.getsNickname());
				cnt = noteService.sendNoteH(vo);
				if (cnt > 0) {
					msg = "쪽지를 성공적으로 보냈습니다";
					url = "/note/noteList?hId=" + vo.gethId();
				} else {
					msg = "쪽지를 보내는데 실패했습니다";
				}
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/note/noteList") // 멤버 쪽지리스트
	public String noteList(@ModelAttribute NoteVO vo, Model model) { // searchVO 상속 받은 noteVO
		logger.info("쪽지리스트 등장 아이디 mId={} ,hId={}", vo.getmId(), vo.gethId());

		if ((vo.getmId() == null || vo.getmId().isEmpty()) && (vo.gethId() == null || vo.gethId().isEmpty())) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}

		logger.info("vo={}", vo);
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(10);
		pagingInfo.setCurrentPage(vo.getCurrentPage());

		vo.setRecordCountPerPage(10);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("vo={}", vo);

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		int totalRecord = 0;
		if (vo.getmId() != null && !vo.getmId().isEmpty()) {
			list = noteService.selectNoteViewM(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalNoteRecordM(vo);
		} else {
			logger.info("확인1");
			list = noteService.selectNoteViewH(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalNoteRecordH(vo);
		}

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);
		return "note/noteList";
	}

	@RequestMapping("/note/noteBox") // 쪽지보관함 리스트
	public String noteBox(@ModelAttribute NoteVO vo, HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");
		logger.info("쪽지보관함 등장 아이디 mId={},hId={}", mId, hId);

		if ((vo.getmId() == null || vo.getmId().isEmpty()) && (vo.gethId() == null || vo.gethId().isEmpty())) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(5);
		pagingInfo.setCurrentPage(vo.getCurrentPage());

		vo.setRecordCountPerPage(5);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("vo={}", vo);

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		int totalRecord = 0;
		if (vo.getmId() != null && !vo.getmId().isEmpty()) {
			list = noteService.selectNoteBoxViewM(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalNoteBoxRecordM(vo);
		} else {
			logger.info("확인1");
			list = noteService.selectNoteBoxViewH(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalNoteBoxRecordH(vo);
		}

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);
		return "note/noteBox";
	}

	@RequestMapping("/note/noteDelete") // 쪽지삭제
	public String noteDelete(@RequestParam int[] noteNo, HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");
		logger.info("noteNo={},mid={}", noteNo, mId);

		int cnt1 = noteService.deleteNote(noteNo);
		int cnt2 = noteService.deleteNoteRec(noteNo);
		String msg = "쪽지 삭제 실패", url = "/note/noteList";
		if (cnt1 > 0) {
			msg = "쪽지 삭제 성공";
		} else if (cnt2 == 0) {
			msg = "쪽지 삭제 실패";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		String result = "";
		if (mId != null && !mId.isEmpty()) {
			result = "redirect:/note/noteList?mId=" + mId;
		} else if (hId != null && !hId.isEmpty()) {
			result = "redirect:/note/noteList?hId=" + hId;
		}
		return result;
	}

	@PostMapping("/note/noteSave") // 쪽지 보관함 시키는것
	public String noteSave(@RequestParam int[] noteNo, HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");
		logger.info("noteNo={}", noteNo);
		int cnt = noteService.saveNote(noteNo);
		String msg = "쪽지 보관 실패", url = "";
		if (mId != null && !mId.isEmpty()) {
			url = "/note/noteBox?mId=" + mId;
		} else if (hId != null && !hId.isEmpty()) {
			url = "/note/noteBox?hId=" + hId;
		}
		if (cnt > 0) {
			msg = "쪽지 보관 성공";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}

	@RequestMapping("/note/noteDetail") // 쪽지 상세사항
	public String noteDetail(@RequestParam(defaultValue = "0") int noteNo, Model model) {
		logger.info("쪽지디테일 noteNo={}", noteNo);

		String msg = "잘못된 url입니다", url = "/note/noteList";
		if (noteNo == 0) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/common/message";
		}
		NoteVO vo = noteService.selectNoteDetail(noteNo); //
		/* int cnt = noteService.noteRead(noteNo); */
		logger.info("쪽지상세화면 vo={}", vo);

		model.addAttribute("vo", vo);

		return "note/noteDetail";
	}

	@RequestMapping("/note/sendList")
	public String sendList(@ModelAttribute NoteVO vo, HttpSession session, Model model) {
		String mId = (String) session.getAttribute("mId");
		String hId = (String) session.getAttribute("hId");

		if ((vo.getmId() == null || vo.getmId().isEmpty()) && (vo.gethId() == null || vo.gethId().isEmpty())) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}

		logger.info("vo={}", vo);
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(5);
		pagingInfo.setCurrentPage(vo.getCurrentPage());

		vo.setRecordCountPerPage(5);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("vo={}", vo);

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		int totalRecord = 0;
		if (mId != null && !mId.isEmpty()) {
			list = noteService.sendListM(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalSendListM(vo);
		} else {
			logger.info("확인1");
			list = noteService.sendListH(vo);
			logger.info("쪽지 총 개수 list.size={}", list.size());
			totalRecord = noteService.selectTotalSendListH(vo);
		}

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);
		return "note/sendList";
	}

}
