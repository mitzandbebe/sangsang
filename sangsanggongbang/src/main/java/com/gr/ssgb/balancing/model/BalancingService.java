package com.gr.ssgb.balancing.model;

import java.util.List;

import com.gr.ssgb.common.ExtendSearchVO;

public interface BalancingService {

	public List<BalancingVO> selectBalancingAll(ExtendSearchVO extendSearchVo);
	int selectTotalRecord(ExtendSearchVO extendSearchVo);
	public String balancing();
	public List<BalancingVO> totalPrice(BalancingVO balancingVo);
	public Integer submitUpdate(int bNo);
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	public BalancingVO selectByNo(int no) ;
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no); 
	*/
}
