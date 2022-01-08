package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

public interface OrderService {
	int insertOrder(OrderVO vo);
	List<Map<String, Object>> selectOrderDetailsView(int orderNo);
	Map<String, Object> selectOrdersView(int orderNo);
	
	/*
	List<OrderAllVO> selectOrderAll(DateSearchVO dateSearchVo);
	int selectTotalRecord(DateSearchVO dateSearchVo);
	*/
}
