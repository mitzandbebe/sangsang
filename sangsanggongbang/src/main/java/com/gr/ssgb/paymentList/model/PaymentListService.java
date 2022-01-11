package com.gr.ssgb.paymentList.model;

import java.util.List;
import java.util.Map;

import com.gr.ssgb.common.PaymentSearchVO;

public interface PaymentListService {
	public List<Map<String, Object>> selectPaymentListAll(PaymentSearchVO paySearchVo);

	public int selectTotalPayment(int mNo);

	public Map<String, Object> selectByNo(PaymentSearchVO paymentSearchVo);

	public int deletePayment(String paylistNo);

	public List<Map<String, Object>> selectRefundByNo(PaymentSearchVO paymentSearchVo);

	public int selectTotalRefund(int mNo);
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	public BalancingVO selectByNo(int no) ;
	public boolean checkPwd(BalancingVO vo);
	public int deleteBoard(int no); 
	*/
}
