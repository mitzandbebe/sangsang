package com.gr.ssgb.balancing.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.ExtendSearchVO;

@Service
public class BalancingServiceImpl implements BalancingService{
	@Autowired
	public BalancingDAO balancingDao;
	
	public List<BalancingVO> selectBalancingAll(ExtendSearchVO extendSearchVo) {
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
	public List<BalancingVO> totalPrice(BalancingVO balancingVo) {
		return balancingDao.totalPrice(balancingVo);
	}

	@Override
	public Integer submitUpdate(int bNo) {
		return balancingDao.submitUpdate(bNo);
	}
	
	
}
