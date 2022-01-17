package com.gr.ssgb.paymentList.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.PaymentSearchVO;
import com.gr.ssgb.order.model.OrderVO;

@Mapper
public interface PaymentListDAO {

	public List<Map<String, Object>> selectPaymentListAll(PaymentSearchVO paySearchVo);

	public int selectTotalPayment(String mId);

	public Map<String, Object> selectByNo(PaymentSearchVO paymentSearchVo);

	public int deletePayment(OrderVO orderVo);

	public List<Map<String, Object>> selectRefundByNo(PaymentSearchVO paymentSearchVo);

	public int selectTotalRefund(String mId);

	
}
