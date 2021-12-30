package com.gr.ssgb.balancing.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface BalancingDAO {

	public List<BalancingVO> selectBalancingAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public String balancing();
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	int selectTotalRecord(SearchVO searchVo);
	public BalancingVO selectByNo(int no);
	public int updateReadCount(int no);
	public String selectPwd(int no);	
	public int updateBoard(BalancingVO vo);
	public int deleteBoard(int no);
	*/
}
