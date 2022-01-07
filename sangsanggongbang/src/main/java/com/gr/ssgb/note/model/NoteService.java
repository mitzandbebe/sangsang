package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

public interface NoteService {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	List<Map<String, Object>> selectNoteView(String rNickname);
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
	int saveNote(int[] noteNo);
	List<Map<String, Object>> selectNoteBoxView(String rNickname);
	NoteVO selectNoteDetail(int noteNo);
}
