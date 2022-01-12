package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDAO {
	int insertOrder(OrderVO orderVo);
	OrderVO selectOrders(String merchantUid);
	/*
	int insertOrderDetail(OrderVO orderVo);
	List<Map<String, Object>> selectOrderDetailsView(int orderNo);
	Map<String, Object> selectOrdersView(int orderNo);
	List<OrderAllVO> selectOrderAll(DateSearchVO dateSearchVo);
	int selectTotalRecord(DateSearchVO dateSearchVo);
	
	*/
	
}
