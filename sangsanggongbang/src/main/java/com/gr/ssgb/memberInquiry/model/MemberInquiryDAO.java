package com.gr.ssgb.memberInquiry.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;

@Mapper
public interface MemberInquiryDAO {
	List<MemberVO> selectMemberAll(SearchVO searchVo);
	int selectMemberTotalRecord(SearchVO searchVo);
	MemberVO selectMemberByNo(int mNo);
	
	List<HostVO> selectHostAll(SearchVO searchVo);
	int selectHostTotalRecord(SearchVO searchVo);
	
	List<Map<String, Object>> selectBanAll(SearchVO searchVo);
	int selectBanTotalRecord(SearchVO searchVo);
	
	int insertBanF(BanVO bVo); 
	int insertBan(BanVO bVo);
	int deleteBanF(BanVO bVo);
	int deleteBan(BanVO bVo);
	int selectBnobyMno(BanVO bVo);
	
	String checkBan(String mId);
	
	List<Map<String, Object>> classUser(int hNo);
	 int selectTotalClassUser(ClassUserVO ClassUserVo); 
}