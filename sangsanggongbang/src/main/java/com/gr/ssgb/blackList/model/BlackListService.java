package com.gr.ssgb.blackList.model;

import java.util.List;
import java.util.Map;

public interface BlackListService {
	List<Map<String, Object>> selectBlackListAll(BlackListVO blackListVO);
	int selectTotalRecord(BlackListVO blackListVO);
	int deleteBlackList(int bno, String mId);
	
	int insertBlackList(BlackListVO vo, String hId);
}
