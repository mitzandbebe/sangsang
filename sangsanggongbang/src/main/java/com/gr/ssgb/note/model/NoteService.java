package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

public interface NoteService {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	List<Map<String, Object>> selectNoteViewM(NoteVO vo);
	List<Map<String, Object>> selectNoteBoxViewM(NoteVO vo);
	int selectTotalNoteRecordM(NoteVO vo);
	int selectTotalNoteBoxRecordM(NoteVO vo);
	
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
	int saveNote(int[] noteNo);
	NoteVO selectNoteDetail(int noteNo);
	
	int readNum(String userid);
}
