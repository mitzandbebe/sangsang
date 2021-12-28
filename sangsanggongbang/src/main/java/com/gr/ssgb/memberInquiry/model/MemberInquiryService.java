package com.gr.ssgb.memberInquiry.model;

import java.util.List;

import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;

public interface MemberInquiryService {
	List<MemberVO> selectMemberAll();
	List<HostVO> selectHostAll();
}
