package com.gr.ssgb.notice.controller;

import java.util.List;

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
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.notice.model.NoticeService;
import com.gr.ssgb.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	private final NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@GetMapping("/noticeWrite")
	public void noticeWrite() {
		logger.info("공지작성 화면 등장");
	}

	@PostMapping("/noticeWrite")
	public String noticeWrite(@ModelAttribute NoticeVO vo, Model model) {
		logger.info("공지작성 파라미터 vo={}", vo);

		int cnt = noticeService.insertNotice(vo);
		logger.info("공지작성 성공여부 cnt={}", cnt);
		String msg = "공지작성에 실패했습니다", url = "/notice/noticeList";
		if (cnt > 0) {
			msg = "공지작성에 성공했습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

	@RequestMapping("/noticeList")
	public String noticeList(@ModelAttribute SearchVO searchVo , Model model) {
		logger.info("공지화면 등장");
		PaginationInfo pagingInfo= new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}",searchVo);
		
		List<NoticeVO> list = noticeService.selectNoticeAll(searchVo);
		logger.info("공지화면 총 list.size={}", list.size());

		int totalRecord = noticeService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo",pagingInfo);
		model.addAttribute("list", list);

		return "notice/noticeList";
	}

	@GetMapping("/noticeDetail")
	public String noticeDetail(@RequestParam(defaultValue = "0" )int noticeNo, Model model) {
		logger.info("공지사항 디테일 화면 등장");
		
		if(noticeNo==0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");
			
			return "/common/message";
		}
		NoticeVO vo= noticeService.selectNoticeByNo(noticeNo);
		NoticeVO PNVo = noticeService.selectPreNnexTitle(noticeNo);
		logger.info("공지사항 결과값 vo={},PNVo={}",vo,PNVo);
		
		
		model.addAttribute("vo",vo);
		model.addAttribute("PNVo",PNVo);
		
		return "notice/noticeDetail";
	}
	
	@GetMapping("/noticeEdit")
	public void noticeEdit_get(@RequestParam(defaultValue = "0")int noticeNo, Model model) {
		logger.info("공지사항 수정화면 noticeNo={}",noticeNo);
		
	}
	
	@PostMapping("/noticeEdit")
	public String noticeEdit_post(@ModelAttribute NoticeVO vo ,Model model) {
		logger.info("글 수정 vo={}",vo);
		
		if(vo.getNoticeNo()==0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");
			
			return "/common/message";
		}
		int cnt = noticeService.updateNotice(vo);
		logger.info("수정 성공 여부 cnt={}",cnt);
		String msg="수정에 실패했습니다", url ="/notice/noticeList";
		if(cnt>0) {
			msg="수정에 성공했습니다.";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "/common/message";
	}
	
	@GetMapping("/noticeDelete")
	public String noticeDelete_post(@RequestParam int noticeNo, Model model) {
		logger.info("공지사항 삭제화면 vo={}",noticeNo);
		
		if(noticeNo==0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");
			
			return "/common/message";
		}
		
		int cnt =noticeService.deleteNotice(noticeNo);
		logger.info("공지사항 삭제여부 cnt={}",cnt);
		String msg="공지사항 삭제에 실패했습니다.", url="/notice/noticeDetail?noticeNo"+noticeNo;
		if(cnt>0) {
			model.addAttribute("msg","공지사항 삭제에 성공했습니다.");
			model.addAttribute("url","/notice/noticeList");
		}
		
		return "common/message";
	}
}
