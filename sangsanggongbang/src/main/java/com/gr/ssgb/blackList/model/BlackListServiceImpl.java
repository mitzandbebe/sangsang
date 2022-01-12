package com.gr.ssgb.blackList.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.host.model.HostDAO;
import com.gr.ssgb.host.model.HostVO;

@Service
public class BlackListServiceImpl implements BlackListService {
	private static final Logger logger = LoggerFactory.getLogger(BlackListServiceImpl.class);

	private final BlackListDAO blackListdao;
	private final HostDAO hostDAO;

	@Autowired
	public BlackListServiceImpl(BlackListDAO blackListdao, HostDAO hostDAO) {
		this.blackListdao = blackListdao;
		this.hostDAO = hostDAO;
	}

	@Override
	public List<Map<String, Object>> selectBlackListAll(BlackListVO blackListVO) {
		return blackListdao.selectBlackListAll(blackListVO) ;
	}

	@Override
	public int selectTotalRecord(BlackListVO blackListVO) {
		return blackListdao.selectTotalRecord(blackListVO);
	}

	public int deleteBlackList(int bno, String mId) {
		
		int cnt1= blackListdao.deleteBlackList(bno);
		int cnt2= blackListdao.deleteBlackListF(mId);
		int result = cnt1+cnt2;
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

}
