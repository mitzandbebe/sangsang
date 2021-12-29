package com.gr.ssgb.balancing.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface BalancingService {

	public List<BalancingVO> selectBalancingAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	public BalancingVO selectByNo(int no) ;
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no); 
	*/
}
