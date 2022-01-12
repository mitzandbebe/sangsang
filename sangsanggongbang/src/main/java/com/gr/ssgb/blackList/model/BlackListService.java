package com.gr.ssgb.blackList.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface BlackListService {
	List<BlackListVO> selectBlackListAll(int hno);
	int selectTotalRecord(BlackListVO blackListVO);
	int deleteBlackList(int bno);
	
	int insertBlackList(BlackListVO vo, String hId);
}
