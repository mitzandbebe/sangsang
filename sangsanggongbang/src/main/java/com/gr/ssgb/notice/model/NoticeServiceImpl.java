package com.gr.ssgb.notice.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService{
	private NoticeDAO noticedao;

	@Autowired
	public NoticeServiceImpl(NoticeDAO noticedao) {
		this.noticedao = noticedao;
	}
	
	public int insertNotice(NoticeVO vo) {
		return noticedao.insertNotice(vo);
	}
	
	public List<NoticeVO> selectNoticeAll(SearchVO searchVo){
		return noticedao.selectNoticeAll(searchVo);
	}
	public List<NoticeVO> selectNoticeMemberAll(SearchVO searchVo){
		return noticedao.selectNoticeMemberAll(searchVo);
	}
	public List<NoticeVO> selectNoticeHostAll(SearchVO searchVo){
		return noticedao.selectNoticeHostAll(searchVo);
	}
	public int selectTotalRecord(SearchVO searchVo) {
		return noticedao.selectTotalRecord(searchVo);
	}
	public int selectTotalMemberRecord(SearchVO searchVo) {
		return noticedao.selectTotalMemberRecord(searchVo);
	}
	public int selectTotalHostRecord(SearchVO searchVo) {
		return noticedao.selectTotalHostRecord(searchVo);
	}
	
	public NoticeVO selectNoticeByNo(int NoticeNo) {
		return noticedao.selectNoticeByNo(NoticeNo);
	}
	public int updateReadCount(int noticeNo) {
		return noticedao.updateReadCount(noticeNo);
	}
	
	public NoticeVO selectPreNnexTitle(int noticeNo) {
		return noticedao.selectPreNnexTitle(noticeNo);
	}
	public int updateNotice(NoticeVO vo) {
		return noticedao.updateNotice(vo);
	}
	public int deleteNotice(int noticeNo) {
		return noticedao.deleteNotice(noticeNo);
	}
}