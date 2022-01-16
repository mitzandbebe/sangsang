package com.gr.ssgb.bottom.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.gr.ssgb.email.model.EmailSender;
import com.gr.ssgb.email.model.EmailVo;
import com.gr.ssgb.memberInquiry.controller.memberInquiryController;

@Controller
public class BottomController {
	private static final Logger logger = LoggerFactory.getLogger(memberInquiryController.class);
	private final EmailSender emailSender;

	@Autowired
	public BottomController(EmailSender emailSender) {
		this.emailSender = emailSender;
	}

	// 1.FAQ
	@GetMapping("/bottomview/faq")
	public void faq() {
		logger.info("faq 등장?!");
	}

	// 2.AboutUS
	@GetMapping("/bottomview/aboutUs")
	public void aboutUs() {
		logger.info("aboutUs 등장?!");
	}

	// 3.CustomerService
	@GetMapping("/bottomview/customerService")
	public void customerService() {
		logger.info("customerService 등장?!");
	}

	@PostMapping("/bottomview/mail")
	public String emailSend(@ModelAttribute EmailVo vo, HttpSession session) {
		String userid = "";
		String adId = (String) session.getAttribute("adId");
		String hId = (String) session.getAttribute("hId");
		String mId = (String) session.getAttribute("mId");
		if(adId!=null && !adId.isEmpty()) {
			userid = adId;
		}else if (hId !=null && !hId.isEmpty()) {
			userid = hId;
		}else if (mId !=null && !mId.isEmpty()) {
			userid = mId;
		}
		vo.setSendId(userid);
		logger.info("vo={}", vo);

		try {
			emailSender.sendEail(vo);
			logger.info("메일 발송 성공");
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.info("메일 발송 실패 : " + e.getMessage());
		}
		return "redirect:/bottomview/customerService";
	}

	// 4.이용약관

	// 5.개인정보처리방침
}
