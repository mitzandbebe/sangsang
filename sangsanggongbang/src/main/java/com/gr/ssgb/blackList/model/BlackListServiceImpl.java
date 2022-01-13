package com.gr.ssgb.blackList.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.host.model.HostDAO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberDAO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.memberInquiry.model.ClassUserVO;

@Service
public class BlackListServiceImpl implements BlackListService {
	private static final Logger logger = LoggerFactory.getLogger(BlackListServiceImpl.class);

	private final BlackListDAO blackListdao;
	private final HostDAO hostDAO;
	private final MemberDAO memberDAO;

	@Autowired
	public BlackListServiceImpl(BlackListDAO blackListdao, HostDAO hostDAO, MemberDAO memberDAO) {
		this.blackListdao = blackListdao;
		this.hostDAO = hostDAO;
		this.memberDAO = memberDAO;
	}

	@Override
	public List<Map<String, Object>> selectBlackListAll(BlackListVO blackListVO) {
		return blackListdao.selectBlackListAll(blackListVO);
	}

	@Override
	public int selectTotalRecord(BlackListVO blackListVO) {
		return blackListdao.selectTotalRecord(blackListVO);
	}

	public int deleteBlackList(int bno, String mId) {

		int cnt1 = blackListdao.deleteBlackList(bno);
		int cnt2 = blackListdao.deleteBlackListF(mId);
		int result = cnt1 + cnt2;
		logger.info("result={}", result);
		return result;
	}

	@Override
	public int insertBlackList(BlackListVO vo, String hId) {
		HostVO hVo = hostDAO.selectHostById(hId);
		vo.setHno(hVo.gethNo());

		int cnt1 = blackListdao.insertBlackList(vo);
		int cnt2 = blackListdao.insertBlackListB(vo);
		int result = cnt1 + cnt2;
		logger.info("result={}", result);
		return result;
	}

	@Override
	public boolean checkBlackList(String mId, int cNo) {
		boolean result = false;
		logger.info("mId={},cNo={}", mId, cNo);
		ClassUserVO cVo = new ClassUserVO();
		cVo.setmId(mId);
		cVo.setcNo(cNo);
		logger.info("cVo={}", cVo);
		ClassUserVO resultCVo = new ClassUserVO();
		if ((resultCVo = blackListdao.selectClassUserbyId(cVo)) != null) {

			logger.info("resultCVo={}", resultCVo);

			String mid = blackListdao.checkBlackList(resultCVo);// 블랙리스트된 아이디
			logger.info("mid={}", mid);
			logger.info("여기야");

			MemberVO mVo = memberDAO.selectMemberById(mId); // 세션으로 받은 아이디로 멤버정보 가져오기

			if (mId != null && !mId.isEmpty() && mid != null && !mid.isEmpty()) {
				if (mid.equals(mVo.getmId())) {
					result = true;
				}
			}
		}
		return result;
	}

}
