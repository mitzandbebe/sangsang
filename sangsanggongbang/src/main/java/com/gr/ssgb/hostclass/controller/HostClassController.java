package com.gr.ssgb.hostclass.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

		model.addAttribute("clist", clist);
		model.addAttribute("now", now);

		return "class/inputclass";
	}

	//@Transactional
	@PostMapping("/inputclass")
	public String inputClass_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request, HttpSession session,
			Model model) {
		logger.info("클래스 등록처리, 파라미터 locationVo={}", locationVo);
		logger.info("클래스 등록처리, 파라미터 hostClassVo={}", hostClassVo);
		logger.info("클래스 등록처리, 파라미터 contentsVo={}", contentsVo);
		
		
		

		//String hostid = session.getAttribute(""); //추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo=1; //임의로 1로설정 test용
		
		int cnt1=0;
		//로케이션 전체 조회.
		List<LocationVO> lvo = hostClassService.selectBylocation(locationVo);
		if(lvo.size()==0) {
			cnt1=hostClassService.insertLocation(locationVo);
		}
		
		int lno=hostClassService.selectByLNo(locationVo); //등록후 가져오기
		

		hostClassVo.setlNo(lno);
		logger.info("lno={}",lno);

		int cnt2=hostClassService.insertClass(hostClassVo);
		int cno=hostClassService.selectByCNo(hostClassVo);
		contentsVo.setcNo(cno);
		logger.info("cno={}",cno);

		// 이미지 업로드 처리
		String thumbnail="";
		String cFilename1="";
		String cFilename2="";
		String cFilename3="";
		String cFilename4="";
		String cFilename5="";
		try {
			List<Map<String, Object>> list 
			=fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);

			////list로 포문돌려서 첫번째는 썸네일 그다음은 이미지파일 이런식으로 구분해서 저장시키면될듯
			for(int i=0;i<list.size();i++) {
				Map<String, Object> map=list.get(i);
				
				if(i==0) {
					thumbnail=(String) map.get("fileName");
				}else if(i==1) {
					cFilename1=(String)map.get("fileName");
				}else if(i==2) {
					cFilename2=(String)map.get("fileName");
				}else if(i==3) {
					cFilename3=(String)map.get("fileName");
				}else if(i==4) {
					cFilename4=(String)map.get("fileName");
				}else if(i==5) {
					cFilename5=(String)map.get("fileName");
				}
			}

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		contentsVo.setThumbnail(thumbnail);
		contentsVo.setcFilename1(cFilename1);
		contentsVo.setcFilename2(cFilename2);
		contentsVo.setcFilename3(cFilename3);
		contentsVo.setcFilename4(cFilename4);
		contentsVo.setcFilename5(cFilename5);

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
	
	
	@GetMapping("/classlist")
	public String classAll_get(Model model) {
		logger.info("클래스 전체목록보기");
		
		List<Map<String,Object>> classlist=hostClassService.selectClassAllContents();
		logger.info("전체 클래스목록 결과, classlist.size={}",classlist.size());

		model.addAttribute("classlist",classlist);
		
		return "class/classlist";
	}
	
	@GetMapping("/detail")
	public String classDetail_get( @RequestParam(defaultValue = "0") int cNo ,
			@RequestParam String categoryName, Model model) {
		logger.info("클래스 상세보기");
		
		List<Map<String, Object>> classlist=hostClassService.selectClassbyCNo(cNo);
		logger.info("전체 클래스목록 결과, classlist.size={}",classlist.size());
		
		List<Map<String, Object>> catelist=hostClassService.selectClassCategory(categoryName);
		logger.info("전체 클래스목록 결과, catelist.size={}",catelist.size());
		
		model.addAttribute("classlist",classlist);
		model.addAttribute("catelist",catelist);
		
		return "class/detail";
	}
	

	//	@ResponseBody
	//	@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
	//	public String fileUpload(
	//			@RequestParam("article_file") List<MultipartFile> multipartFile
	//			, HttpServletRequest request,
	//			@ModelAttribute ContentsVO contentVo) {
	//		
	//		String strResult = "{ \"result\":\"FAIL\" }";
	//		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
	//		String fileRoot;
	//		try {
	//			// 파일이 있을때 탄다.
	//			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
	//				
	//				for(MultipartFile file:multipartFile) {
	//					fileRoot = contextRoot + "resources/upload_images/";
	//					System.out.println(fileRoot);
	//					
	//					String originalFileName = file.getOriginalFilename();	//오리지날 파일명
	//					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
	//					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
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
	//	@ResponseBody
	//	@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
	//	public void fileUpload(@RequestParam("article_file") List<Map<String, Object>> fileList,
	//			 HttpServletRequest request,
	//			@ModelAttribute ContentsVO contentVo) {
	//		
	//		// 파일 업로드 처리
	//		String fileName = "", originName = "";
	//		int pathFlag = ConstUtil.UPLOAD_FILE_FLAG;
	//		try {
	//			fileList = fileUploadUtil.fileUpload(request, pathFlag);
	//			for (int i = 0; i < fileList.size(); i++) {
	//				Map<String, Object> map = fileList.get(i);
	//				fileName = (String) map.get("fileName");
	//				originName = (String) map.get("originalFileName");
	//			}
	//
	//			logger.info("파일 업로드 성공, fileName={}", fileName);
	//
	//		} catch (IllegalStateException e) {
	//			// TODO Auto-generated catch block
	//			e.printStackTrace();
	//		} catch (IOException e) {
	//			// TODO Auto-generated catch block
	//			e.printStackTrace();
	//		}
	//
	//		// 2
	//		contentVo.setcFilename1(fileName);
	//		contentVo.setcFileOriginalname1(originName);
	//
	//		
	//	}

}
