package com.gr.ssgb.hostclass.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.hostclass.model.CategoryVO;
import com.gr.ssgb.hostclass.model.ContentsVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.hostclass.model.LocationVO;
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

		List<CategoryVO> clist = hostClassService.selectCategoryAll();

		// 현재날짜
		Date nowdate = new Date();
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		String now = format.format(nowdate);

		logger.info("now", now);

		model.addAttribute("clist", clist);
		model.addAttribute("now", now);

		return "class/inputclass";
	}

	
	@PostMapping("/inputclass")
	public String inputClass_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request,
			 Model model) {
		logger.info("클래스 등록처리, 파라미터 locationVo={}", locationVo);
		logger.info("클래스 등록처리, 파라미터 hostClassVo={}", hostClassVo);
		logger.info("클래스 등록처리, 파라미터 contentsVo={}", contentsVo);
		// 근데 로케이션이 완전 똑같으면 어떡하지?
		// 먼저 지역번호를 조회해보고 있으면 등록 안하게?
		int lno=hostClassService.selectByLNo(locationVo);
		int cnt1=0;
		if(lno<1) {
			//1보다 작다는건 아직 등록 안됬다는거니까 등록
			cnt1=hostClassService.insertLocation(locationVo); 
		}else {
			//이미있으니 등록 하지말고 cnt1 이 0이면 안되니까 1로 바꿔주기
			cnt1=1;
		}
		
		hostClassVo.setlNo(lno);
		logger.info("lno={}",lno);
		
		int cnt2=hostClassService.insertClass(hostClassVo);
		int cno=hostClassService.selectByCNo(lno);
		contentsVo.setcNo(cno);
		logger.info("cno={}",cno);

		// 이미지 업로드 처리
		String thumbnail="";
		try {
			List<Map<String, Object>> list 
				=fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);
			
			for(Map<String, Object> map : list) {
				thumbnail=(String) map.get("fileName");
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		contentsVo.setThumbnail(thumbnail);
		
		int cnt3=hostClassService.insertContents(contentsVo);
		logger.info("클래스등록 결과, cnt1={}",cnt1);
		logger.info("클래스등록 결과, cnt2={}",cnt2);
		logger.info("클래스등록 결과, cnt3={}",cnt3);
		
		String msg="클래스등록 실패",url="/class/inputclass";
		if(cnt3>0&&cnt1>0&&cnt2>0) {
			msg="클래스등록되었습니다.";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
//	public String fileUpload(
//			@RequestParam("article_file") List<MultipartFile> multipartFile
//			, HttpServletRequest request,
//			@ModelAttribute ContentsVO contentVo) {
//		
//		String strResult = "{ \"result\":\"FAIL\" }";
//		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/sangsanggongbang");
//		String fileRoot;
//		try {
//			// 파일이 있을때 탄다.
//			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
//				
//				for(MultipartFile file:multipartFile) {
//					fileRoot = contextRoot + "/resources/upload_images/";
//					System.out.println(fileRoot);
//					
//					String originalFileName = file.getOriginalFilename();	//오리지날 파일명
//					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
//					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
//					
//					contentVo.setcFilename(savedFileName);
//					contentVo.setcFileOriginalname(originalFileName);
//					
//					File targetFile = new File(fileRoot + savedFileName);	
//					try {
//						InputStream fileStream = file.getInputStream();
//						FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
//						
//					} catch (Exception e) {
//						//파일삭제
//						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
//						e.printStackTrace();
//						break;
//					}
//				}
//				strResult = "{ \"result\":\"OK\" }";
//			}
//			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
//			else
//				strResult = "{ \"result\":\"OK\" }";
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return strResult;
//	}
	@ResponseBody
	@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
	public void fileUpload(@RequestParam("article_file") List<Map<String, Object>> fileList,
			 HttpServletRequest request,
			@ModelAttribute ContentsVO contentVo) {
		
		// 파일 업로드 처리
		String fileName = "", originName = "";
		long fileSize = 0;
		int pathFlag = ConstUtil.UPLOAD_FILE_FLAG;
		try {
			fileList = fileUploadUtil.fileUpload(request, pathFlag);
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
		contentVo.setcFilename(fileName);
		contentVo.setcFileOriginalname(originName);
		contentVo.setcFilesize(fileSize);

		 List<MultipartFile> multipartFile =new ArrayList<>();
//		 for(int i=0;i<multipartFile.size();i++) {
//			 multipartFile.add(fileList);
//		 }
		
	}

}
