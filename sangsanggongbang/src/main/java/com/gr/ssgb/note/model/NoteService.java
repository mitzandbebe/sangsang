package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

public interface NoteService {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	List<Map<String, Object>> selectNoteView(String rNickname);
}
