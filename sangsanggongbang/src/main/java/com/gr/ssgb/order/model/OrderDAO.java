package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDAO {
	int insertOrder(OrderVO orderVo);
	OrderVO selectOrders(String merchantUid);
	
}
