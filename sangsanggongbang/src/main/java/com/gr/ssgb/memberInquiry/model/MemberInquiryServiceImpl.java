package com.gr.ssgb.memberInquiry.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberDAO;
import com.gr.ssgb.member.model.MemberVO;

@Service
public class MemberInquiryServiceImpl implements MemberInquiryService{
	private final MemberInquiryDAO memberInquiryDAO;

	@Autowired
	public MemberInquiryServiceImpl(MemberInquiryDAO memberInquiryDAO) {
		this.memberInquiryDAO = memberInquiryDAO;
	}

	@Override
	public List<MemberVO> selectMemberAll() {
		return memberInquiryDAO.selectMemberAll();
	}

	@Override
	public List<HostVO> selectHostAll() {
		return memberInquiryDAO.selectHostAll();
	}
	
}
