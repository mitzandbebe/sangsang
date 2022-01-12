package com.gr.ssgb.blackList.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface BlackListDAO {
	List<BlackListVO> selectBlackListAll(int hno);
	int selectTotalRecord(BlackListVO blackListVO);
	int deleteBlackList(int bno);
	
	int insertBlackList(BlackListVO vo);
	int insertBlackListB(BlackListVO vo);
}
