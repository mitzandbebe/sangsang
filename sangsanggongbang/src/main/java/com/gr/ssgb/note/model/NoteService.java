package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

public interface NoteService {
	String selectSendUserM(String rNickname);
	String selectSendUserH(String rNickname);
	int sendNote(NoteVO noteVo);
	int sendNoteH(NoteVO noteVo);
	
	List<Map<String, Object>> selectNoteViewM(NoteVO vo);
	List<Map<String, Object>> selectNoteBoxViewM(NoteVO vo);
	int selectTotalNoteRecordM(NoteVO vo);
	int selectTotalNoteBoxRecordM(NoteVO vo);
	
	List<Map<String, Object>> selectNoteViewH(NoteVO vo);
	List<Map<String, Object>> selectNoteBoxViewH(NoteVO vo);
	int selectTotalNoteRecordH(NoteVO vo);
	int selectTotalNoteBoxRecordH(NoteVO vo);
	
	List<Map<String, Object>> sendListM(NoteVO vo);
	List<Map<String, Object>> sendListH(NoteVO vo);
	int selectTotalSendListM(NoteVO vo);
	int selectTotalSendListH(NoteVO vo);
	
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
	int saveNote(int[] noteNo);
	NoteVO selectNoteDetail(int noteNo);
	
	CharSequence readNum(String userid);
}
