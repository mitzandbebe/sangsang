package com.gr.ssgb.balancing.model;

import java.util.List;

import com.gr.ssgb.balancing.common.SearchVO;

public interface BalancingService {
	public int insertBoard(BalancingVO vo);
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public BalancingVO selectByNo(int no) ;
	public int updateReadCount(int no);
	public int updateBoard(BalancingVO vo);
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no);
}
