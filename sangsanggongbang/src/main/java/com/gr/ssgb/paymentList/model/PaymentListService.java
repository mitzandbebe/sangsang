package com.gr.ssgb.paymentList.model;

import java.util.List;

public interface PaymentListService {
	public List<PaymentListVO> selectPaymentListAll();
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	public BalancingVO selectByNo(int no) ;
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no); 
	*/
}
