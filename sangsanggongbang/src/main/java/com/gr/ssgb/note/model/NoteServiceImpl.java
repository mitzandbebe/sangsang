package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.member.model.MemberDAO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.note.controller.NoteController;

@Service
public class NoteServiceImpl implements NoteService {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
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
	public int sendNoteM(NoteVO noteVo) {
		return noteDAO.sendNoteM(noteVo);
	}
	//멤버용
	@Override
	public List<Map<String, Object>> selectNoteViewM(NoteVO vo) {
		MemberVO mVo = memberDAO.selectMemberById(vo.getmId());
		String nickname = mVo.getmNickname();
		vo.setrNickname(nickname);
		List<Map<String, Object>> list = noteDAO.selectNoteViewM(vo);
		return list;
	}

	@Override
	public List<Map<String, Object>> selectNoteBoxViewM(NoteVO vo) {
		MemberVO mVo = memberDAO.selectMemberById(vo.getmId());
		String nickname = mVo.getmNickname();
		vo.setrNickname(nickname);
		List<Map<String, Object>> list = noteDAO.selectNoteBoxViewM(vo);
		return list;
	}

	@Override
	public int selectTotalNoteRecordM(NoteVO vo) {
		return noteDAO.selectTotalNoteRecordM(vo);
	}

	@Override
	public int selectTotalNoteBoxRecordM(NoteVO vo) {
		return noteDAO.selectTotalNoteBoxRecordM(vo);
	}
	
	//호스트용
	
	
	
	public int deleteNote(int[] noteNo) {
		return noteDAO.deleteNote(noteNo);
	}

	public int deleteNoteRec(int[] noteNo) {
		return noteDAO.deleteNoteRec(noteNo);
	}

	@Override
	public int saveNote(int[] noteNo) {
		return noteDAO.saveNote(noteNo);
	}

	@Override
	public NoteVO selectNoteDetail(int noteNo) {
		noteDAO.noteRead(noteNo);
		return noteDAO.selectNoteDetail(noteNo);
	}

	@Override
	public int readNum(String userid) {
		return noteDAO.readNum(userid);
	}

}
