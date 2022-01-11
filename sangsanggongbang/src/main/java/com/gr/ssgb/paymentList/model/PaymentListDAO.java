package com.gr.ssgb.paymentList.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaymentListDAO {

	public List<Map<String, Object>> selectPaymentListAll(PaymentSearchVO paySearchVo);

	public int selectTotalPayment(int mNo);

	public Map<String, Object> selectByNo(PaymentSearchVO paymentSearchVo);

	public int deletePayment(String paylistNo);

	public List<Map<String, Object>> selectRefundByNo(PaymentSearchVO paymentSearchVo);

	public int selectTotalRefund(int mNo);

	
}
