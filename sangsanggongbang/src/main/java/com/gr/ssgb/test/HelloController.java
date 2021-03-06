package com.gr.ssgb.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {
	@GetMapping("/hello")
	public String hello(Model model) {

		model.addAttribute("name", "강유빈 ");
		return "thymeleaf/hello";

		// => http://localhost:9091/demo/hello

	}

	@GetMapping("/api_string")
	@ResponseBody
	public String apiString(@RequestParam("name") String name) {

		return "hello " + name;
		// => http://localhost:9091/demo/api_string?name=hong

	}

	@RequestMapping(value = "dashboard/user/my-items")
	public String myitems() {
		return "dashboard/user/my-items";
	}
	
	@RequestMapping(value = "/detail")
	public String singleSpace() {
		return "class/detail";
	}
	/*
	@RequestMapping(value = "/balancing")
	public String balancing() {
		return "dashboard/balancing/balancing";
	}
	*/
}
