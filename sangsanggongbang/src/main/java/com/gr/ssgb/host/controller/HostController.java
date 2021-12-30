package com.gr.ssgb.host.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gr.ssgb.host.model.HostService;

@Controller
public class HostController {
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	private final HostService hostService;
	
	@Autowired
	public HostController(HostService hostService) {
		this.hostService = hostService;
	}
	
}
