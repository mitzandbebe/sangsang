package com.gr.ssgb.notice.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}