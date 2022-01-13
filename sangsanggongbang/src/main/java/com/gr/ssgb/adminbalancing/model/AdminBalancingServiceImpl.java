package com.gr.ssgb.adminbalancing.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.ExtendSearchVO;

@Service
public class AdminBalancingServiceImpl implements AdminBalancingService{
	@Autowired
	public AdminBalancingDAO balancingDao;
	
	public List<AdminBalancingVO> selectBalancingAll(ExtendSearchVO extendSearchVo) {
		return balancingDao.selectBalancingAll(extendSearchVo);
	}
	
	@Override
	public int selectTotalRecord(ExtendSearchVO extendSearchVo) {
		return balancingDao.selectTotalRecord(extendSearchVo);
	}

	@Override
	public String balancing() {
		return balancingDao.balancing();
	}

	@Override
	public List<AdminBalancingVO> totalPrice(AdminBalancingVO balancingVo) {
		return balancingDao.totalPrice(balancingVo);
	}

	@Override
	public Integer submitUpdate(int bNo) {
		return balancingDao.submitUpdate(bNo);
	}
	
	
}
