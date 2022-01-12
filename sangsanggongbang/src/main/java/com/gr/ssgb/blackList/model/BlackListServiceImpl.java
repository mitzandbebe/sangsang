package com.gr.ssgb.blackList.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.blackList.controller.BlackListController;
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

	public List<BlackListVO> selectBlackListAll(int hno) {
		return blackListdao.selectBlackListAll(hno);
	}

	public int selectTotalRecord(BlackListVO blackListVO) {
		return blackListdao.selectTotalRecord(blackListVO);
	}

	public int deleteBlackList(int bno) {
		return blackListdao.deleteBlackList(bno);
	}

	@Override
	public int insertBlackList(BlackListVO vo, String hId) {
		HostVO hVo = hostDAO.selectHostById(hId);
		vo.setHno(hVo.gethNo());
		
		int cnt1=blackListdao.insertBlackList(vo);
		logger.info("cnt1={}",cnt1);
		int cnt2=blackListdao.insertBlackListB(vo);
		logger.info("cnt2={}",cnt2);
		int result = cnt1+cnt2;
		logger.info("result={}",result);
		return result;
	}
}
