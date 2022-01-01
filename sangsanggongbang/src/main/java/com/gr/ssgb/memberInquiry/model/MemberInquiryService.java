package com.gr.ssgb.memberInquiry.model;

import java.util.List;
import java.util.Map;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;

public interface MemberInquiryService {
	List<MemberVO> selectMemberAll(SearchVO searchVo);
	int selectMemberTotalRecord(SearchVO searchVo);
	MemberVO selectMemberByNo(int mNo);
	
	List<HostVO> selectHostAll(SearchVO searchVo);
	int selectHostTotalRecord(SearchVO searchVo);
	
	List<Map<String, Object>> selectBanAll(SearchVO searchVo);
	int selectBanTotalRecord(SearchVO searchVo);
	
	int insertBan(BanVO vo);
	int banDelete(int mNo);
}
