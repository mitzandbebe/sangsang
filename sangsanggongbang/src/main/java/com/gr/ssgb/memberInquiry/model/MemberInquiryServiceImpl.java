package com.gr.ssgb.memberInquiry.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;

@Service
public class MemberInquiryServiceImpl implements MemberInquiryService{
	private final MemberInquiryDAO memberInquirydao;

	@Autowired
	public MemberInquiryServiceImpl(MemberInquiryDAO memberInquirydao) {
		this.memberInquirydao = memberInquirydao;
	}

	@Override
	public List<MemberVO> selectMemberAll(SearchVO searchVo) {
		return memberInquirydao.selectMemberAll(searchVo);
	}

	@Override
	public int selectMemberTotalRecord(SearchVO searchVo) {
		return memberInquirydao.selectMemberTotalRecord(searchVo);
	}
	@Override
	public MemberVO selectMemberByNo(int mNo) {
		return memberInquirydao.selectMemberByNo(mNo);
	}

	@Override
	public List<HostVO> selectHostAll(SearchVO searchVo) {
		return memberInquirydao.selectHostAll(searchVo);
	}

	@Override
	public int selectHostTotalRecord(SearchVO searchVo) {
		return memberInquirydao.selectHostTotalRecord(searchVo);
	}


	@Override
	public int selectBanTotalRecord(SearchVO searchVo) {
		return memberInquirydao.selectHostTotalRecord(searchVo);
	}

	@Override
	public int insertBan(BanVO vo) {
		return memberInquirydao.insertBan(vo);
	}

	@Override
	public List<Map<String, Object>> selectBanAll(SearchVO searchVo) {
		return memberInquirydao.selectBanAll(searchVo);
	}
}
