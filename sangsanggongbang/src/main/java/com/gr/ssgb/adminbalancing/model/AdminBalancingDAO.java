package com.gr.ssgb.adminbalancing.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface AdminBalancingDAO {

	public List<AdminBalancingVO> selectBalancingAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public String balancing();
	public List<AdminBalancingVO> totalPrice(AdminBalancingVO balancingVo);
	public Integer submitUpdate(int bNo);

}
