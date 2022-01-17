package com.gr.ssgb.note.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.host.model.HostDAO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberDAO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.note.controller.NoteController;

@Service
public class NoteServiceImpl implements NoteService {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteDAO noteDAO;
	private final MemberDAO memberDAO;
	private final HostDAO hostDAO;
	
	@Autowired
	public NoteServiceImpl(NoteDAO noteDAO, MemberDAO memberDAO, HostDAO hostDAO) {
		super();
		this.noteDAO = noteDAO;
		this.memberDAO = memberDAO;
		this.hostDAO =hostDAO;
	}

	@Override
	public String selectSendUserM(String rNickname) {
		return noteDAO.selectSendUserM(rNickname);
	}
	@Override
	public String selectSendUserH(String rNickname) {
		return noteDAO.selectSendUserH(rNickname);
	}

	@Override
	public int sendNote(NoteVO noteVo) {
		return noteDAO.sendNote(noteVo);
	}
	@Override
	public int sendNoteH(NoteVO noteVo) {
		return noteDAO.sendNoteH(noteVo);
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
	@Override
	public List<Map<String, Object>> selectNoteViewH(NoteVO vo) {
		HostVO hVo = hostDAO.selectHostById(vo.gethId());
		
		String nickname = hVo.gethNickname();
		vo.setrNickname(nickname);
		List<Map<String, Object>> list = noteDAO.selectNoteViewH(vo);
		return list;
	}

	@Override
	public List<Map<String, Object>> selectNoteBoxViewH(NoteVO vo) {
		HostVO hVo = hostDAO.selectHostById(vo.gethId());
		
		String nickname = hVo.gethNickname();
		vo.setrNickname(nickname);
		List<Map<String, Object>> list = noteDAO.selectNoteBoxViewH(vo);
		return list;
	}

	@Override
	public int selectTotalNoteRecordH(NoteVO vo) {
		return noteDAO.selectTotalNoteBoxRecordH(vo);
	}

	@Override
	public int selectTotalNoteBoxRecordH(NoteVO vo) {
		return noteDAO.selectTotalNoteBoxRecordH(vo);
	}

	@Override
	public List<Map<String, Object>> sendListM(NoteVO vo) {
		return noteDAO.sendListM(vo);
	}

	@Override
	public List<Map<String, Object>> sendListH(NoteVO vo) {
		return noteDAO.sendListH(vo);
	}

	@Override
	public int selectTotalSendListM(NoteVO vo) {
		return noteDAO.selectTotalSendListM(vo);
	}

	@Override
	public int selectTotalSendListH(NoteVO vo) {
		return noteDAO.selectTotalSendListH(vo);
	}
	
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
	public CharSequence readNum(String userid) {
		return noteDAO.readNum(userid); 	
	}



}
