package com.gr.ssgb.email.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.email.model.EmailSender;
import com.gr.ssgb.email.model.EmailVo;

@Controller
public class EmailController {
	private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	private final EmailSender emailSender;

	@Autowired
	public EmailController(EmailSender emailSender) {
		this.emailSender = emailSender;
	}

	@GetMapping("/mail/mailSend")
	public void email() {
		logger.info("이메일 화면등장");
	}
	
	@PostMapping("/mail/mailSend")
	public String emailSend(@ModelAttribute EmailVo vo, HttpSession session) {
		String userid = (String)session.getAttribute("adId");
		vo.setSendId(userid);
		logger.info("vo={}",vo);
		
		try {
			emailSender.sendEail(vo);
			logger.info("메일 발송 성공");
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.info("메일 발송 실패 : "+e.getMessage());
		}
		return "redirect:/mail/mailSend";
	}
}
