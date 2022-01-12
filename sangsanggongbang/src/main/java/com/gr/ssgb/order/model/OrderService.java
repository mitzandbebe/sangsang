package com.gr.ssgb.order.model;

public interface OrderService {
	int insertOrder(OrderVO orderVo);
	OrderVO selectOrders(String merchantUid);
	
	/*
	List<Map<String, Object>> selectOrderDetailsView(int orderNo);
	Map<String, Object> selectOrdersView(int orderNo);
	List<OrderAllVO> selectOrderAll(DateSearchVO dateSearchVo);
	int selectTotalRecord(DateSearchVO dateSearchVo);
	*/
}
