package com.gr.ssgb.note.model;

import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteDAO {
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
	
	int deleteNote(int[] noteNo);
	int deleteNoteRec(int[] noteNo); 
	int saveNote(int[] noteNo);
	int noteRead(int noteNo);
	NoteVO selectNoteDetail(int noteNo);
	
	CharSequence readNum(String userId);//안읽은 쪽지 개수
}
