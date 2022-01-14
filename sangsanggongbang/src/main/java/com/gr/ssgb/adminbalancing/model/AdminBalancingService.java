package com.gr.ssgb.adminbalancing.model;

import java.util.List;

import com.gr.ssgb.common.ExtendSearchVO;

public interface AdminBalancingService {

	public List<AdminBalancingVO> selectBalancingAll(ExtendSearchVO extendSearchVo);
	int selectTotalRecord(ExtendSearchVO extendSearchVo);
	public String balancing();
	public List<AdminBalancingVO> totalPrice(AdminBalancingVO adminBalancingVo);
	public Integer submitUpdate(int bNo);
	
}
