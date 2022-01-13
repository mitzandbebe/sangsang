package com.gr.ssgb.blackList.model;

import java.util.List;
import java.util.Map;

import com.gr.ssgb.memberInquiry.model.ClassUserVO;

public interface BlackListService {
	List<Map<String, Object>> selectBlackListAll(BlackListVO blackListVO);
	int selectTotalRecord(BlackListVO blackListVO);
	int deleteBlackList(int bno, String mId);
	
	int insertBlackList(BlackListVO vo, String hId);
	
	boolean checkBlackList(String mId,int cNo);
}
