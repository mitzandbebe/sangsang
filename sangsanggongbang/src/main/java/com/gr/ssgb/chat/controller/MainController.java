package com.gr.ssgb.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping("/meassage/chat")
	public ModelAndView chat() {
		ModelAndView mv = new ModelAndView();
		String roomNum = "1150";
		mv.addObject(roomNum);
		mv.setViewName("chat");
		return mv;
	}
}
