package com.gr.ssgb.blackList.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface BlackListService {
	List<BlackListVO> selectBlackListAll(int hno);
	int selectTotalRecord(SearchVO searchVo);
	int deleteBlackList(int bno);
}
