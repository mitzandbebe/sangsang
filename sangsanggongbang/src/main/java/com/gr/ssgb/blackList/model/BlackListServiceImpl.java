package com.gr.ssgb.blackList.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlackListServiceImpl implements BlackListService{

	private final BlackListDAO blackListdao;
	
	@Autowired
	public BlackListServiceImpl(BlackListDAO blackListdao) {
		this.blackListdao = blackListdao;
	}
	
	public List<BlackListVO> selectBlackListAll(int hno){
		return blackListdao.selectBlackListAll(hno);
	}
}
