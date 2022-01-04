package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.member.model.MemberDAO;
import com.gr.ssgb.member.model.MemberVO;

@Service
public class NoteServiceImpl implements NoteService{
	private final NoteDAO noteDAO;
	private final MemberDAO memberDAO;
	
	@Autowired
	public NoteServiceImpl(NoteDAO noteDAO, MemberDAO memberDAO) {
		super();
		this.noteDAO = noteDAO;
		this.memberDAO = memberDAO;
	}

	
	@Override
	public String selectSendUser(String rNickname) {
		return noteDAO.selectSendUser(rNickname);
	}

	@Override
	public int sendNote(NoteVO noteVo) {
		return noteDAO.sendNote(noteVo);
	}

	@Override
	public List<Map<String, Object>> selectNoteView(String mId) {
		MemberVO vo = memberDAO.selectMemberById(mId);
		List<Map<String, Object>> list = noteDAO.selectNoteView(vo.getmNickname());
		return list;
	}
	
}
