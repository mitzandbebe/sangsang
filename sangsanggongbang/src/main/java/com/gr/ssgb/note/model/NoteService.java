package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.gr.ssgb.note.controller.NoteController;

public interface NoteService {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	List<Map<String, Object>> selectNoteView(String rNickname);
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
}
