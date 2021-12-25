package com.gr.ssgb.mainevent.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.mainevent.model.MainEventService;
import com.gr.ssgb.mainevent.model.MainEventVO;

@Controller
@RequestMapping("/mainevent")
public class MainEventController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainEventController.class);
	
	private final MainEventService mainEventService;
	private final FileUploadUtil fileUploadUtil;
	
	@Autowired
	public MainEventController(MainEventService mainEventService, FileUploadUtil fileUploadUtil) {
		super();
		this.mainEventService = mainEventService;
		this.fileUploadUtil = fileUploadUtil;
		logger.info("메인이벤트 생성자 주입");
	}

	@GetMapping("/eventwrite")
	public String write_get() {
		logger.info("이벤트 등록");
		return "mainevent/eventwrite";
	}
	
	@PostMapping("/eventwrite")
	public String write_post(@ModelAttribute MainEventVO vo,HttpServletRequest request) {
		logger.info("이벤트 등록 처리,파라미터 vo ={}",vo);
		
		// 파일 업로드 처리
		String fileName = "", originName = "";
		long fileSize = 0;
		int pathFlag = ConstUtil.UPLOAD_FILE_FLAG;
		try {
			List<Map<String, Object>> fileList = fileUploadUtil.fileUpload(request, pathFlag);
			for (int i = 0; i < fileList.size(); i++) {
				Map<String, Object> map = fileList.get(i);
				fileName = (String) map.get("fileName");
				originName = (String) map.get("originalFileName");
				fileSize = (long) map.get("fileSize");
			}

			logger.info("파일 업로드 성공, fileName={}", fileName);

		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 2
		vo.setNewsUploadname(fileName);
		vo.setNewsOriginalname(originName);
		vo.setNewsFilesize(fileSize);
		
		
		
		
		int cnt = mainEventService.insertEvent(vo);
		logger.info("등록 결과, cnt={}",cnt);
		
		return "redirect:/mainevent/eventlist";
	}
	
	@RequestMapping("/eventlist")
	public String list(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("이벤트 목록");
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}",searchVo);
		
		List<MainEventVO> list=mainEventService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());
		
		int totalRecord = mainEventService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list",list);
		
		return "/mainevent/eventlist";
	}
	
	@RequestMapping("/eventdetail")
	public String detail(@RequestParam(defaultValue = "0") int newsNo, HttpServletRequest request, Model model) {
		logger.info("공지사항 상세보기 파라미터 newsNo={}", newsNo);

		if (newsNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/mainevent/eventlist");

			return "common/message";
		}

		MainEventVO vo = mainEventService.selectByNo(newsNo);
		logger.info("상세보기 결과 vo={}", vo);

		// 2

		// 3
		model.addAttribute("vo", vo);

		return "/mainevent/eventdetail";
	}
	
	@RequestMapping("/eventmain")
	public void topevent(Model model) {
		logger.info("공지사항 메인");
		
		List<MainEventVO> toplist=mainEventService.selectByTop();
		logger.info("공지사항결과 toplist={}",toplist);
		
		model.addAttribute("toplist",toplist);
		
	}
}
