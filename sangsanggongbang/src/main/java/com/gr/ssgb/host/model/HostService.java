package com.gr.ssgb.host.model;

import java.util.List;

import com.gr.ssgb.admin.model.MonthVO;

public interface HostService {
	public static final int LOGIN_OK=1;
	public static final int ID_NONE=2;
	public static final int PWD_DISAGREE=3;
	
	//아이디 중복확인시 필요한 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재함
	public static final int NON_EXIST_ID=2;  //해당 아이디가 존재하지 않음-사용가능

	int checkIdPwd(String gethId, String gethPwd);

	int selectHostCnt(String gethId);

	HostVO selectHostById(String gethId);

	int insertHost(HostVO vo);

	List<HostVO> selectAllHost();

	int selectHostNo(String hId);

	int updateAdditionalInfo(HostVO vo);

	int updateAddiWithoutProfile(HostVO vo);

	HostVO selectHostByHNo(int hNo);

	int findClassCnt(MonthVO monVo);

	Integer selectMyProfit(MonthVO monVo);

	int updateHGrade(HostVO vo);

	Integer selectUndoneClass(int hNo);

	int deleteHost(int hNo);

	int updatePwd(HostVO vo);
}
