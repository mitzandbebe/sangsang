package com.gr.ssgb.email.model;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailSender {
	private static final Logger logger= LoggerFactory.getLogger(EmailSender.class);
	private final JavaMailSender mailSender;

	@Autowired
	public EmailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendEail(EmailVo vo) throws MessagingException {
		logger.info("확인1");
		MimeMessage msg= mailSender.createMimeMessage();
		logger.info("확인2");
		msg.setSubject(vo.getEmailTitle());
		logger.info("확인3");
		msg.setText(vo.getMessage());
		logger.info("확인4");
		msg.setRecipient(RecipientType.TO, new InternetAddress(vo.getReceiveId()));
		logger.info("확인5={}",vo.getSendId());
		msg.setFrom(new InternetAddress(vo.getSendId()));
		logger.info("확인6");
		mailSender.send(msg);
		logger.info("확인7");
	}
}
