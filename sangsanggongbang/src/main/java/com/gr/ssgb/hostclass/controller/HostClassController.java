package com.gr.ssgb.hostclass.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.hostclass.model.CategoryVO;
import com.gr.ssgb.hostclass.model.ContentsVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.hostclass.model.LocationVO;
import com.gr.ssgb.mainevent.controller.MainEventController;
import com.gr.ssgb.review.model.ReviewService;

@Controller
@RequestMapping("/class")
public class HostClassController {
	private static final Logger logger = LoggerFactory.getLogger(MainEventController.class);
	private final HostClassService hostClassService;
	private final ReviewService reviewService;
	private final FileUploadUtil fileUploadUtil;
	private final HostService hostService;

	@Autowired
	public HostClassController(HostClassService hostClassService, ReviewService reviewService,
			FileUploadUtil fileUploadUtil, HostService hostService) {
		this.hostClassService = hostClassService;
		this.reviewService = reviewService;
		this.fileUploadUtil = fileUploadUtil;
		this.hostService = hostService;
		logger.info("클래스 생성자 주입");
	}

	@GetMapping("/inputclass")
	public String inputClass(HttpSession session,Model model) {
		logger.info("클래스 등록 페이지");

		String hId = (String) session.getAttribute("mId"); //추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo=hostService.selectHostNo(hId);
		
		logger.info("hNo=",hNo);
		
		List<CategoryVO> clist = hostClassService.selectCategoryAll();

		// 현재날짜
		Date nowdate = new Date();
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		String now = format.format(nowdate);

		model.addAttribute("clist", clist);
		model.addAttribute("hNo", hNo);
		model.addAttribute("now", now);

		return "class/inputclass";
	}

	//@Transactional
	@PostMapping("/inputclass")
	public String inputClass_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request, 
			Model model) {
		logger.info("클래스 등록처리, 파라미터 locationVo={}", locationVo);
		logger.info("클래스 등록처리, 파라미터 hostClassVo={}", hostClassVo);
		logger.info("클래스 등록처리, 파라미터 contentsVo={}", contentsVo);

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
	
	
	@RequestMapping("/classlist")
	public String classAll_get(Model model) {
		logger.info("클래스 전체목록보기");
		
		//int cNo=hostClassService.selectByCNo(hostClassVO);
		
		//int avgRate =reviewService.selectRate(cNo);
		
		
		List<Map<String,Object>> classlist=hostClassService.selectClassAllContents();
		logger.info("전체 클래스목록 결과, classlist.size={}",classlist.size());
		
		model.addAttribute("classlist",classlist);
		//model.addAttribute("avgRate", avgRate);
		
		return "class/classlist";
	}
	
	@GetMapping("/detail")
	public String classDetail_get( @RequestParam(defaultValue = "0") int cNo , @RequestParam(defaultValue = "0") int hNo ,
			@RequestParam String categoryName,HttpServletRequest request, Model model) {
		logger.info("클래스 상세보기");
		
		//int avgRate =reviewService.selectRate(cNo);
		
		
		List<Map<String, Object>> classlist=hostClassService.selectClassbyCNo(cNo);
		logger.info("클래스목록 결과, classlist.size={}",classlist.size());
		
		List<Map<String, Object>> catelist=hostClassService.selectClassCategory(categoryName);
		logger.info("해당 카테고리 클래스목록 결과, catelist.size={}",catelist.size());
		
		model.addAttribute("classlist",classlist);
		model.addAttribute("catelist",catelist);
		//model.addAttribute("avgRate", avgRate);
		
		return "class/detail";
	}
	
	@RequestMapping("/classMap")
	public String map(@ModelAttribute HostClassVO hostClassVO, @RequestParam(defaultValue = "0") int cNo,
			HttpServletRequest request, Model model) {
		List<Map<String, Object>> classlist=hostClassService.selectClassbyCNo(cNo);
		logger.info("클래스목록 결과, classlist.size={}",classlist.size());
		
		model.addAttribute("classlist",classlist);
		
		return "class/classMap";
	}
	
	
	@RequestMapping("/map")
	public String map_test() {
		return "class/map";
	}
	
	@GetMapping("/updateclass")
	public String update_class_Get(@RequestParam(defaultValue = "0") int cNo, 
			@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request, HttpSession session,
			Model model) {
		logger.info("update 클래스화면");
		if (cNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/index");
			return "common/message";
		}
		
		List<Map<String,Object>> clist=hostClassService.selectClassAllContents();
		List<CategoryVO> cate = hostClassService.selectCategoryAll();
		logger.info("clist 클래스화면");
		
		model.addAttribute("clist", clist);
		model.addAttribute("cate", cate);
		
		return "class/updateclass";
	}

	@PostMapping("/updateclass")
	public String update_class_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request, HttpSession session, @RequestParam(defaultValue = "0") int cNo,
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

		int cnt2=hostClassService.updateByClass(hostClassVo);
		logger.info("cNo={}",cNo);

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

		int cnt3=hostClassService.updateByContents(contentsVo);
		
		logger.info("클래스등록 결과, cnt1={}",cnt1);
		logger.info("클래스수정 결과, cnt2={}",cnt2);
		logger.info("클래스수정 결과, cnt3={}",cnt3);

		String msg="클래스수정 실패",url="/class/updateclass?cNo="+cNo;
		if(cnt3>0&&cnt1>0&&cnt2>0) {
			msg="클래스수정되었습니다.";
		}
		

		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
	}
}
