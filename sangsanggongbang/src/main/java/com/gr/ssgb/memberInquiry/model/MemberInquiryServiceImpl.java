package com.gr.ssgb.memberInquiry.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.host.model.HostDAO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.memberInquiry.controller.memberInquiryController;

@Service
public class MemberInquiryServiceImpl implements MemberInquiryService {
	private static final Logger logger = LoggerFactory.getLogger(memberInquiryController.class);
	
	private final MemberInquiryDAO memberInquirydao;
	private final HostDAO hostDAO;
	

	@Autowired
	public MemberInquiryServiceImpl(MemberInquiryDAO memberInquirydao,HostDAO hostDAO) {
		this.memberInquirydao = memberInquirydao;
		this.hostDAO = hostDAO;
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
		return memberInquirydao.selectBanTotalRecord(searchVo);
	}

	@Override
	@Transactional
	public int insertBan(BanVO bVo) {
		int cnt1 = memberInquirydao.insertBan(bVo);
		int cnt2 = memberInquirydao.insertBanF(bVo);
		int result = cnt1 + cnt2;
		return result;

	}

	@Override
	public List<Map<String, Object>> selectBanAll(SearchVO searchVo) {
		return memberInquirydao.selectBanAll(searchVo);
	}

	@Override
	@Transactional
	public int deleteBan(BanVO bVo) {
		int cnt1 = memberInquirydao.deleteBan(bVo);
		int cnt2 = memberInquirydao.deleteBanF(bVo);
		int result = cnt1 + cnt2;
		return result;
	}

	@Override
	public Boolean checkBan(String mId) {
		boolean result = false;
		String check = memberInquirydao.checkBan(mId);
		if (check != null && !check.isEmpty()) {
			if (check.equals("Y")) {
				result = true;
			}
		}
		return result;
	}

	@Override
	public List<Map<String, Object>> classUser(String hId) {
		HostVO vo = hostDAO.selectHostById(hId);
		logger.info("vo={}",vo);
		return memberInquirydao.classUser(vo.gethNo());
	}
}