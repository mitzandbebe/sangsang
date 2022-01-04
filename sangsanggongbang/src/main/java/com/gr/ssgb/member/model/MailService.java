package com.gr.ssgb.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;


@Component
public class MailService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendMail(MailVO mail) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(mail.getAddress());
        message.setFrom("sangsanggongbang");
        message.setSubject(mail.getTitle());
        message.setText(mail.getMessage());

        mailSender.send(message);
    }

}
