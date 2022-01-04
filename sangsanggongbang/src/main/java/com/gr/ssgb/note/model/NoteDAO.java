package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteDAO {
	String selectSendUser(String rNickname);
	int sendNote(NoteVO noteVo);
	List<Map<String, Object>> selectNoteView(String rNickname);
}
