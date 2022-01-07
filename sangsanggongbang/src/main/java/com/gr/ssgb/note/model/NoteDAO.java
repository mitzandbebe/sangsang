package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteDAO {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	
	List<Map<String, Object>> selectNoteView(NoteVO vo);
	List<Map<String, Object>> selectNoteBoxView(NoteVO vo);
	int selectTotalNoteRecord(NoteVO vo);
	int selectTotalNoteBoxRecord(NoteVO vo);
	
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
	int saveNote(int[] noteNo);
	int noteRead(int noteNo);
	NoteVO selectNoteDetail(int noteNo);
}
