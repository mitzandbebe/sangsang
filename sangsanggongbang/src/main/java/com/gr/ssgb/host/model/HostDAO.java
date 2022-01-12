package com.gr.ssgb.host.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.admin.model.MonthVO;

@Mapper
public interface HostDAO {

	String checkIdPwd(String hId, String hPwd);

	int selectHostCnt(String hId);

	HostVO selectHostById(String hId);

	int insertHost(HostVO vo);

	List<HostVO> selectAllHost();

	int selectHostNo(String hId);

	int updateAdditionalInfo(HostVO vo);

	int updateAddiWithoutProfile(HostVO vo);

	HostVO selectHostByHNo(int hNo);

	int findClassCnt(MonthVO monVo);

	int selectMyProfit(MonthVO monVo);

	int updateHGrade(HostVO vo);
}
