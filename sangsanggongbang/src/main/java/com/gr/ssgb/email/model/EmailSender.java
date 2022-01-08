package com.gr.ssgb.email.model;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailSender {
	private final JavaMailSender mailSender;

	@Autowired
	public EmailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendEail(EmailVo vo) throws MessagingException {
		MimeMessage msg= mailSender.createMimeMessage();
		msg.setSubject(vo.getEmailTitle());
		msg.setText(vo.getMessage());
		msg.setRecipient(RecipientType.TO, new InternetAddress(vo.getReceiveId()));
		msg.setFrom(new InternetAddress(vo.getSendId()));
		mailSender.send(msg);
	}
}
