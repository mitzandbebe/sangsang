package com.gr.ssgb.blackList.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

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
	public int selectTotalRecord(BlackListVO blackListVO) {
		return blackListdao.selectTotalRecord(blackListVO);
	}
	public int deleteBlackList(int bno) {
		return blackListdao.deleteBlackList(bno);
	}
}
