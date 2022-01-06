package com.gr.ssgb.review.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.review.model.ReviewService;
import com.gr.ssgb.review.model.ReviewVO;

@Controller
@RequestMapping("/class")
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	private final ReviewService reviewService;
	private final FileUploadUtil fileUploadUtil;
	private final MemberService memberService;

	@Autowired
	public ReviewController(ReviewService reviewService, FileUploadUtil fileUploadUtil, MemberService memberService) {
		super();
		this.reviewService = reviewService;
		this.fileUploadUtil = fileUploadUtil;
		this.memberService = memberService;
	}

	@GetMapping("/review")
	public String review_get(Model model) {
		logger.info("리뷰 목록페이지");
		return "class/review";
	}

	@RequestMapping("/review")
	public String list(@ModelAttribute SearchVO searchVo, Model model , @RequestParam(defaultValue = "0") int cNo ) {
		logger.info("리뷰 목록");

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<ReviewVO> list = reviewService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());
		logger.info("전체조회 결과 list={}", list);

		int totalRecord = reviewService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

		return "class/review";
	}

	
	@GetMapping("/addreview")
	public void review_add(Model model) {
		logger.info("리뷰 등록페이지");
	}
	
	@PostMapping("/addreview")
	public String reviewAdd_post(@ModelAttribute ReviewVO reviewVo, @RequestParam(defaultValue = "0") int cNo, 
			 @RequestParam(defaultValue = "0") int hNo, @RequestParam String categoryName,
			HttpSession session,HttpServletRequest request,Model model) {
		String mId = (String) session.getAttribute("mId");
	//	int mNo= memberService.selectMno(mId);
		logger.info("리뷰 등록 처리,파라미터 reviewVo ={}", reviewVo);
		
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
		reviewVo.setrUploadname(fileName);
		reviewVo.setrOriginalname(originName);
		reviewVo.setrFilesize(fileSize);

		int cnt = reviewService.insertReview(reviewVo);
		logger.info("등록 결과, cnt={}", cnt);

		model.addAttribute("mId",mId);
		
		return "redirect:/class/detail?cNo="+cNo+"&categoryName="+categoryName+"&hNo="+hNo;
	}
}
