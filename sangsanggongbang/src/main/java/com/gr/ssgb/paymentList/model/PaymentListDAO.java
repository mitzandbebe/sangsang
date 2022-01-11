package com.gr.ssgb.paymentList.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.PaymentSearchVO;

@Mapper
public interface PaymentListDAO {
	public List<Map<String, Object>> selectPaymentListAll(PaymentSearchVO paySearchVo);

	public int selectTotalPayment(int mNo);
	
}
