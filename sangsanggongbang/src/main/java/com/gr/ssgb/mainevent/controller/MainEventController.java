package com.gr.ssgb.mainevent.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String write_post(@ModelAttribute MainEventVO vo, HttpServletRequest request) {
		logger.info("이벤트 등록 처리,파라미터 vo ={}", vo);

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
		logger.info("등록 결과, cnt={}", cnt);

		return "redirect:/mainevent/eventlist";
	}

	@RequestMapping("/eventlist")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("이벤트 목록");

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<MainEventVO> list = mainEventService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());
		logger.info("전체조회 결과 list={}", list);

		int totalRecord = mainEventService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

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

		List<MainEventVO> toplist = mainEventService.selectByTop();
		logger.info("공지사항결과 toplist={}", toplist);

		model.addAttribute("toplist", toplist);

	}

	@GetMapping("/eventupdate")
	public String update_get(@RequestParam(defaultValue = "0") int newsNo, 
			HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 newsNo={}", newsNo);
		if (newsNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/mainevent/eventlist");
			return "common/message";
		}

		MainEventVO vo = mainEventService.selectByNo(newsNo);
		logger.info("수정화면, 조회 결과 vo={}", vo);

		String fileInfo 
		= fileUploadUtil.getFileInfo(vo.getNewsOriginalname(), 
				vo.getNewsFilesize(), request);
		model.addAttribute("vo", vo);
		model.addAttribute("fileInfo", fileInfo);

		return "/mainevent/eventupdate";
	}

	@PostMapping("/eventupdate")
	public String update_post(@ModelAttribute MainEventVO vo, @RequestParam String oldFileName,
			HttpServletRequest request, Model model) {
		// 1
		logger.info("글수정 처리, 파라미터 vo={}, oldFileName={}", vo, oldFileName);

		// 업로드 처리
		String newsUploadname = "";
		try {
			List<Map<String, Object>> fileList = fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_FILE_FLAG);

			for (Map<String, Object> fileMap : fileList) {
				newsUploadname = (String) fileMap.get("newsUploadname");
				vo.setNewsUploadname(newsUploadname);
				vo.setNewsOriginalname((String) fileMap.get("newsOriginalname"));
				vo.setNewsFilesize((Long) fileMap.get("newsFilesize"));
			} // for

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 2
		String msg = "수정 실패", url = "/mainevent/eventupdate?newsNo=" + vo.getNewsNo();
		int cnt = mainEventService.updateEvent(vo);
		if (cnt > 0) {
			msg = "글수정되었습니다.";
			url = "/mainevent/eventdetail?newsNo=" + vo.getNewsNo();

			// 새로 업로드하는 경우, 기존파일이 있다면 기존파일 삭제처리
			if (newsUploadname != null && !newsUploadname.isEmpty() && oldFileName != null && !oldFileName.isEmpty()) {
				String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_FILE_FLAG, request);
				File oldFile = new File(upPath, oldFileName);
				if (oldFile.exists()) {
					boolean bool = oldFile.delete();
					logger.info("글수정,파일삭제여부:{}", bool);
				}
			}
		}
		// 3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		// 4
		return "common/message";
	}
	
	@GetMapping("/eventdelete")
	public String delete_get(@RequestParam(defaultValue = "0") int newsNo,
			Model model) {
		logger.info("삭제화면");
		if(newsNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/mainevent/eventlist");
			return "common/message";
		}
		
		return "/mainevent/eventdelete";
	}
	
	@PostMapping("eventdelete")
	public String delete_post(@ModelAttribute MainEventVO vo,
			@RequestParam(defaultValue = "0") int newsNo,
			HttpServletRequest request,Model model) {
		logger.info("삭제 처리, 파라미터 vo={}, newsNo={}",vo,newsNo);
		
		String msg="글삭제 실패", url="/mainevent/eventdelete?newsNo="
				+newsNo;
			//삭제 - 저장 프로시저 이용
			
		mainEventService.deleteEvent(newsNo);			
			msg="글삭제되었습니다.";
			url="/mainevent/eventlist";		
			
			//파일 삭제
			String fileName=vo.getNewsOriginalname();
			if(fileName!=null && !fileName.isEmpty()) {
				String upPath
			=fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_FILE_FLAG, request);
				
				File oldFile = new File(upPath ,fileName);
				if(oldFile.exists()) {
					boolean bool=oldFile.delete();
					logger.info("파일삭제 여부:{}", bool);
				}
			}
		
		//3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	}
	

}
