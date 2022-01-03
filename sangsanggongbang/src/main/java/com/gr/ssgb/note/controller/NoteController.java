package com.gr.ssgb.note.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.note.model.NoteService;

@Controller
@RequestMapping("/note")
public class NoteController {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	@Autowired
	public NoteController(NoteService noteService) {
		this.noteService = noteService;
	}
	
	@GetMapping("/noteWrite")
	public void noteWrite_get(@RequestParam String mId) {
		logger.info("쪽지 작성 페이지 등장 mId={}",mId);
	}
	/*@PostMapping("/noteWrite")
	public String noteWrite_post() {
		
	}*/
	
	@RequestMapping("/noteList")
	public void noteList() {
		logger.info("쪽지리스트 등장");
	}
}
