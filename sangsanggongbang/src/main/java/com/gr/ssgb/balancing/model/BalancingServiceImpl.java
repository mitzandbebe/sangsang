package com.gr.ssgb.balancing.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

@Service
public class BalancingServiceImpl implements BalancingService{
	@Autowired
	public BalancingDAO balancingDao;
	
	public List<BalancingVO> selectBalancingAll(SearchVO searchVo) {
		return balancingDao.selectBalancingAll(searchVo);
	}
	
	@Override
	public int selectTotalRecord(SearchVO searachVo) {
		return balancingDao.selectTotalRecord(searachVo);
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
