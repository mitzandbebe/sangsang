package com.gr.ssgb.balancing.model;

import java.util.List;

public interface BalancingService {
	public List<BalancingVO> selectBalancingAll();
	public List<BalancingVO> selectBalancingComp(String bFlag);
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	public BalancingVO selectByNo(int no) ;
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no); 
	*/
}
