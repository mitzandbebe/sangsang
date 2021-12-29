package com.gr.ssgb.hostclass.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.hostclass.model.CategoryVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.mainevent.controller.MainEventController;

@Controller
@RequestMapping("/class")
public class HostClassController {
	private static final Logger logger = LoggerFactory.getLogger(MainEventController.class);
	private final HostClassService hostClassService;
	private final FileUploadUtil fileUploadUtil;
	
	public HostClassController(HostClassService hostClassService, FileUploadUtil fileUploadUtil) {
		this.hostClassService = hostClassService;
		this.fileUploadUtil = fileUploadUtil;
		logger.info("클래스 생성자 주입");
	}
	
	@GetMapping("/inputclass")
	public String inputClass(Model model) {
		logger.info("클래스 등록 페이지");
		
		List<CategoryVO> clist=hostClassService.selectCategoryAll();
		
		//현재날짜
		Date nowdate = new Date();
		SimpleDateFormat format=new SimpleDateFormat("MM/dd/yyyy");
		String now = format.format(nowdate);
		
		logger.info("now",now);
		
		model.addAttribute("clist",clist);
		model.addAttribute("now",now);
		
		
		return "class/inputclass";
	}
	
	@Transactional
	@PostMapping("/inputclass")
	public String inputClass_post(@ModelAttribute HostClassVO classVo,
			HttpServletRequest request,
			MultipartHttpServletRequest mhsq,Model model) throws IllegalStateException,IOException {
		logger.info("클래스 등록처리, 파라미터 classvo={}",classVo);
		
		//호스트번호가져와야함. 세션으로 넘어온거 가져오기.
		//session = request.getSession();
		
		//호스트만들어지면 호스트에서 넘버로 아이디 빼오는것 가져와야함 그리고 넘버도 호스트넘버넣어줘야함.
		//혹은 세션으로 넘버랑 아이디 둘 다 넘겨 받아올 수있게 부탁하기..
		//classVo.sethNo((String)session.getAttribute("id"));
		
		hostClassService.insertClass(classVo);
		
		//이미지 업로드 처리 - 다중처리
		//이미지담을 리스트
		String fileName = "", originName = "";
			long fileSize = 0;
			int pathFlag = ConstUtil.UPLOAD_IMAGE_FLAG;
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
			classVo.setcFilename(fileName);
			classVo.setcFileOriginalname(originName);
			classVo.setcFilesize(fileSize);
		
			int cnt=hostClassService.insertClass(classVo);
			logger.info("등록결과, cnt={}",cnt);
			
			return "";
	}
	

	
}
