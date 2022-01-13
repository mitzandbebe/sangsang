package com.gr.ssgb.hostclass.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.google.common.collect.ImmutableList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.blackList.model.BlackListService;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.hostclass.model.CategoryVO;
import com.gr.ssgb.hostclass.model.ContentsVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.hostclass.model.LocationVO;
import com.gr.ssgb.mainevent.controller.MainEventController;
import com.gr.ssgb.member.model.ConcernVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.memberInquiry.model.ClassUserVO;
import com.gr.ssgb.memberInquiry.model.MemberInquiryService;
import com.gr.ssgb.review.model.ReviewService;
import com.gr.ssgb.review.model.ReviewVO;

@Controller
@RequestMapping("/class")
public class HostClassController {
	private static final Logger logger = LoggerFactory.getLogger(MainEventController.class);
	private final HostClassService hostClassService;
	private final ReviewService reviewService;
	private final FileUploadUtil fileUploadUtil;
	private final HostService hostService;
	private final MemberService memberService;
	private final MemberInquiryService memberInquiryService;
	private final BlackListService blackListService;

	@Autowired
	public HostClassController(HostClassService hostClassService, ReviewService reviewService,
			FileUploadUtil fileUploadUtil, HostService hostService, MemberService memberService,
			MemberInquiryService memberInquiryService,BlackListService blackListService) {
		this.hostClassService = hostClassService;
		this.reviewService = reviewService;
		this.fileUploadUtil = fileUploadUtil;
		this.hostService = hostService;
		this.memberService = memberService;
		this.memberInquiryService = memberInquiryService;
		this.blackListService= blackListService;
		logger.info("클래스 생성자 주입");
	}

	@GetMapping(value = "/search")
	public String getSearchClassPage(HttpServletRequest request, @ModelAttribute("search") HostClassVO hostClassVO,
			ModelMap model) {

		List<String> area = ImmutableList.<String>builder().add("서울").add("경기").add("인천").add("강원").add("충청").add("세종")
				.add("전라").add("경상").add("제주").build();

		List<CategoryVO> clist = hostClassService.selectCategoryAll();

		List<HostClassVO> list = this.hostClassService.findBySearchClass(hostClassVO);

		model.addAttribute("clist", clist);
		model.addAttribute("area", area);
		model.addAttribute("list", list);

		return "class/search";
	}

	@GetMapping("/inputclass")
	public String inputClass(HttpSession session, Model model) {
		logger.info("클래스 등록 페이지");

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		if (hId.equals("")) {
			String msg = "호스트로 로그인해주세요";
			String url = "/host/hostLogin";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "common/message";
		}

		logger.info("hNo=", hNo);

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

	// @Transactional
	@PostMapping("/inputclass")
	public String inputClass_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo, LocationVO locationVo,
			HttpServletRequest request, HttpSession session, Model model) {
		logger.info("클래스 등록처리, 파라미터 locationVo={}", locationVo);
		logger.info("클래스 등록처리, 파라미터 hostClassVo={}", hostClassVo);
		logger.info("클래스 등록처리, 파라미터 contentsVo={}", contentsVo);

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		int cnt1 = 2;
		// 로케이션 전체 조회.
		List<LocationVO> lvo = hostClassService.selectBylocation(locationVo);
		if (lvo.size() == 0) {
			cnt1 = hostClassService.insertLocation(locationVo);
		}

		int lno = hostClassService.selectByLNo(locationVo); // 등록후 가져오기

		hostClassVo.setlNo(lno);
		logger.info("lno={}", lno);

		int cnt2 = hostClassService.insertClass(hostClassVo);
		int cno = hostClassService.selectByCNo(hostClassVo);
		contentsVo.setcNo(cno);
		logger.info("cno={}", cno);

		// 이미지 업로드 처리
		String thumbnail = "";
		String cFilename1 = "";
		String cFilename2 = "";
		String cFilename3 = "";
		String cFilename4 = "";
		String cFilename5 = "";
		try {
			List<Map<String, Object>> list = fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);

			//// list로 포문돌려서 첫번째는 썸네일 그다음은 이미지파일 이런식으로 구분해서 저장시키면될듯
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> map = list.get(i);

				if (i == 0) {
					thumbnail = (String) map.get("fileName");
				} else if (i == 1) {
					cFilename1 = (String) map.get("fileName");
				} else if (i == 2) {
					cFilename2 = (String) map.get("fileName");
				} else if (i == 3) {
					cFilename3 = (String) map.get("fileName");
				} else if (i == 4) {
					cFilename4 = (String) map.get("fileName");
				} else if (i == 5) {
					cFilename5 = (String) map.get("fileName");
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

		int cnt3 = hostClassService.insertContents(contentsVo);

		logger.info("클래스등록 결과, cnt1={}", cnt1);
		logger.info("클래스등록 결과, cnt2={}", cnt2);
		logger.info("클래스등록 결과, cnt3={}", cnt3);

		String msg = "클래스등록 실패", url = "/class/inputclass";
		if (cnt3 > 0 && cnt1 > 0 && cnt2 > 0) {
			msg = "클래스등록되었습니다.";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

	@RequestMapping("/listofClass")
	public String classAllList_get(HttpSession session, Model model) {
		logger.info("클래스 전체목록보기");

		List<ReviewVO> rlist = reviewService.selectAllRate();

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		List<Map<String, Object>> classlist = hostClassService.selectClassAllOfHost(hNo);
		logger.info("호스트별전체 클래스목록 결과, classlist.size={}", classlist.size());

		model.addAttribute("classlist", classlist);
		model.addAttribute("rlist", rlist);

		return "class/listofClass";
	}

	@RequestMapping("/classlist")
	public String classAll_get(Model model) {
		logger.info("클래스 전체목록보기");

		List<ReviewVO> rlist = reviewService.selectAllRate();

		List<Map<String, Object>> classlist = hostClassService.selectClassAllContents();
		logger.info("전체 클래스목록 결과, classlist.size={}", classlist.size());

		model.addAttribute("classlist", classlist);
		model.addAttribute("rlist", rlist);

		return "class/classlist";
	}

	@RequestMapping("/listbyCategory")
	public String classCategory_get(@RequestParam String categoryName, Model model) {
		logger.info("클래스 전체목록보기");

		List<Map<String, Object>> catelist = hostClassService.selectClassCategory(categoryName);
		logger.info("해당 카테고리 클래스목록 결과, catelist.size={}", catelist.size());
		List<ReviewVO> rlist = reviewService.selectAllRate();

		model.addAttribute("catelist", catelist);
		model.addAttribute("rlist", rlist);

		return "class/listbyCategory";
	}

	@GetMapping("/detail")
	public String classDetail_get(@RequestParam(defaultValue = "0") int cNo, @RequestParam(defaultValue = "0") int hNo,
			@RequestParam String categoryName, HttpServletRequest request, HttpSession session, ConcernVO concern,
			Model model) {
		logger.info("클래스 상세보기");
		// 여기부터 김준영
		String mId = (String) session.getAttribute("mId");
		logger.info("mId={}",mId);
		boolean ban = false; //참여제한
		boolean blackList= false; //블랙리스트
		if (mId != null && !mId.isEmpty()) {
			if (ban = memberInquiryService.checkBan(mId)) {
				model.addAttribute("msg", "회원님은 참여제한된 회원입니다.");
				model.addAttribute("url", "/index");
				return "/common/message";
			}else if(blackList = blackListService.checkBlackList(mId,cNo)) {
				model.addAttribute("msg", "회원님은 블랙리스트처리된 회원입니다.");
				model.addAttribute("url", "/index");
				return "/common/message";
			}
		}
		// 여기까지 김준영
		Integer avgRate = reviewService.selectRate(cNo);
		List<ReviewVO> rlist = reviewService.selectAllRate();

		List<Map<String, Object>> classlist = hostClassService.selectClassbyCNo(cNo);
		logger.info("클래스목록 결과, classlist.size={}", classlist.size());

		HostVO vo = hostService.selectHostByHNo(hNo);
		int classCnt = hostClassService.selectClassCnt(hNo);
		int reviewCnt = reviewService.selectReviewByHost(hNo);

		int con = 0;
		try {
			int mNo = memberService.selectMno(mId);
			concern.setmNo(mNo);
			concern.setcNo(cNo);
			con = hostClassService.selectConcernbyCNo(concern);
			model.addAttribute("con", con);

		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("classlist", classlist);
		model.addAttribute("avgRate", avgRate);
		model.addAttribute("rlist", rlist);
		model.addAttribute("hostVo", vo);
		model.addAttribute("classCnt", classCnt);
		model.addAttribute("reviewCnt", reviewCnt);
		model.addAttribute("mId", mId);

		return "class/detail";
	}

	@RequestMapping("/classMap")
	public String map(@ModelAttribute HostClassVO hostClassVO, @RequestParam(defaultValue = "0") int cNo,
			HttpServletRequest request, Model model) {
		List<Map<String, Object>> classlist = hostClassService.selectClassbyCNo(cNo);
		logger.info("클래스목록 결과, classlist.size={}", classlist.size());

		model.addAttribute("classlist", classlist);

		return "class/classMap";
	}

	@RequestMapping("/map")
	public String map_test() {
		return "class/map";
	}

	@GetMapping("/updateclass")
	public String update_class_Get(@RequestParam(defaultValue = "0") int cNo, @ModelAttribute HostClassVO hostClassVo,
			ContentsVO contentsVo, LocationVO locationVo, HttpServletRequest request, HttpSession session,
			Model model) {
		logger.info("update 클래스화면");
		if (cNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/index");
			return "common/message";
		}

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		List<Map<String, Object>> clist = hostClassService.selectClassAllContents();
		List<CategoryVO> cate = hostClassService.selectCategoryAll();
		logger.info("clist 클래스화면");

		model.addAttribute("clist", clist);
		model.addAttribute("cate", cate);
		model.addAttribute("hNo", hNo);

		return "class/updateclass";
	}

	@PostMapping("/updateclass")
	public String update_class_post(@ModelAttribute HostClassVO hostClassVo, ContentsVO contentsVo,
			LocationVO locationVo, HttpServletRequest request, HttpSession session,
			@RequestParam(defaultValue = "0") int cNo, Model model) {
		logger.info("클래스 등록처리, 파라미터 locationVo={}", locationVo);
		logger.info("클래스 등록처리, 파라미터 hostClassVo={}", hostClassVo);
		logger.info("클래스 등록처리, 파라미터 contentsVo={}", contentsVo);

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		int cnt1 = 2;
		// 로케이션 전체 조회.
		List<LocationVO> lvo = hostClassService.selectBylocation(locationVo);
		if (lvo.size() == 0) {
			cnt1 = hostClassService.insertLocation(locationVo);
		}

		int lno = hostClassService.selectByLNo(locationVo); // 등록후 가져오기

		hostClassVo.setlNo(lno);
		logger.info("lno={}", lno);

		int cnt2 = hostClassService.updateByClass(hostClassVo);
		logger.info("cNo={}", cNo);

		// 이미지 업로드 처리
		String thumbnail = "";
		String cFilename1 = "";
		String cFilename2 = "";
		String cFilename3 = "";
		String cFilename4 = "";
		String cFilename5 = "";
		try {
			List<Map<String, Object>> list = fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);

			//// list로 포문돌려서 첫번째는 썸네일 그다음은 이미지파일 이런식으로 구분해서 저장시키면될듯
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> map = list.get(i);

				if (i == 0) {
					thumbnail = (String) map.get("fileName");
				} else if (i == 1) {
					cFilename1 = (String) map.get("fileName");
				} else if (i == 2) {
					cFilename2 = (String) map.get("fileName");
				} else if (i == 3) {
					cFilename3 = (String) map.get("fileName");
				} else if (i == 4) {
					cFilename4 = (String) map.get("fileName");
				} else if (i == 5) {
					cFilename5 = (String) map.get("fileName");
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

		int cnt3 = hostClassService.updateByContents(contentsVo);

		logger.info("클래스등록 결과, cnt1={}", cnt1);
		logger.info("클래스수정 결과, cnt2={}", cnt2);
		logger.info("클래스수정 결과, cnt3={}", cnt3);

		String msg = "클래스수정 실패", url = "/class/updateclass?cNo=" + cNo;
		if (cnt3 > 0 && cnt1 > 0 && cnt2 > 0) {
			msg = "클래스수정되었습니다.";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

	@RequestMapping("/listdelete")
	public String classdelete_list(@RequestParam(defaultValue = "0") int cNo, HttpSession session, Model model) {
		logger.info("클래스 전체목록보기");

		List<ReviewVO> rlist = reviewService.selectAllRate();

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		List<Map<String, Object>> classlist = hostClassService.selectClassAllOfHost(hNo);
		logger.info("호스트별전체 클래스목록 결과, classlist.size={}", classlist.size());

		model.addAttribute("classlist", classlist);
		model.addAttribute("rlist", rlist);

		return "class/listdelete";
	}

	@GetMapping("/deleteClass")
	public String delete_get(@RequestParam(defaultValue = "0") int cNo, Model model) {
		logger.info("삭제화면");
		if (cNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/class/listdelete");
			return "common/message";
		}

		return "class/deleteClass";
	}

	@PostMapping("/deleteClass")
	public String delete_post(@ModelAttribute HostClassVO hostClassvo, ContentsVO contentsvo,
			@RequestParam(defaultValue = "0") int cNo, HttpServletRequest request, Model model) {
		logger.info("삭제 처리, 파라미터 hostClassvo={},contentsvo={}, cNo={}", hostClassvo, contentsvo, cNo);

		String msg = "글삭제 실패", url = "/class/deleteClass?cNo=" + cNo;
		// 삭제 - 저장 프로시저 이용

		hostClassService.deleteContents(cNo);
		hostClassService.deleteClass(cNo);

		msg = "클래스가 삭제되었습니다.";
		url = "/class/listdelete";

		// 파일 삭제
		String thumnail = contentsvo.getThumbnail();
		String filename1 = contentsvo.getcFilename1();
		String filename2 = contentsvo.getcFilename2();
		String filename3 = contentsvo.getcFilename3();
		String filename4 = contentsvo.getcFilename4();
		String filename5 = contentsvo.getcFilename5();
		if (thumnail != null && !thumnail.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, thumnail);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}
		if (filename1 != null && !filename1.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, filename1);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}
		if (filename2 != null && !filename2.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, filename2);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}
		if (filename3 != null && !filename3.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, filename3);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}
		if (filename4 != null && !filename4.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, filename4);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}
		if (filename5 != null && !filename5.isEmpty()) {
			String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);

			File oldFile = new File(upPath, filename5);
			if (oldFile.exists()) {
				boolean bool = oldFile.delete();
				logger.info("파일삭제 여부:{}", bool);
			}
		}

		// 3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		// 4
		return "common/message";
	}

	@RequestMapping("/menuCategory")
	public String menu_category(@RequestParam String categoryName, Model model) {
		logger.info("클래스 전체목록보기");

		List<Map<String, Object>> catelist = hostClassService.selectClassCategory(categoryName);
		logger.info("해당 카테고리 클래스목록 결과, catelist.size={}", catelist.size());
		List<ReviewVO> rlist = reviewService.selectAllRate();

		model.addAttribute("catelist", catelist);
		model.addAttribute("rlist", rlist);

		return "class/menuCategory";
	}

	@RequestMapping("/menulocation")
	public String menu_location(@RequestParam String addr, Model model) {
		logger.info("클래스 전체목록보기");

		List<ReviewVO> rlist = reviewService.selectAllRate();

		// 지역 앞두글자로 가져오기
		List<Map<String, Object>> classlist = hostClassService.selectClassLoc(addr);

		logger.info("전체 클래스목록 결과, classlist.size={}", classlist.size());

		model.addAttribute("classlist", classlist);
		model.addAttribute("rlist", rlist);

		return "class/menulocation";
	}

	@GetMapping("/myclass")
	public String classlist_get(@RequestParam(defaultValue = "0") int cNo, HttpSession session, Model model) {
		logger.info("호스트 내 클래스화면");

		String hId = (String) session.getAttribute("hId"); // 추후 호스트 회원가입되면 아이디저장
		// 이 아이디로 hno 가져오기,-> xml 에 만들고 메서드가져오기
		int hNo = hostService.selectHostNo(hId);

		List<Map<String, Object>> classlist = hostClassService.selectClassAllOfHost(hNo);

		model.addAttribute("classlist", classlist);

		return "class/myclass";
	}
}

