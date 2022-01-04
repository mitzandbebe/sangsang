package com.gr.ssgb.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gr.ssgb.member.model.MailService;
import com.gr.ssgb.member.model.MailVO;


/*
 * @RestController
 * 
 * @RequestMapping("/mail") public class MailController {
 * 
 * @Autowired private MailService mailService;
 * 
 * @GetMapping("/send") public String sendTestMail(String email) {
 * 
 * mailVO.setAddress(email); mailVO.setTitle("밤둘레 님이 발송한 이메일입니다.");
 * mailVO.setMessage("안녕하세요. 반가워요!");
 * 
 * mailService.sendMail(mailVO);
 * 
 * return "/login/login"; } }
 */
