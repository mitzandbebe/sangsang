package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

//주문 내역 페이지에서 사용
public class OrderAllVO {
	private OrderVO orderVo;  //orders테이블, mybatis- 1:1 관계를 처리하는 
							  //association 엘리먼트 이용
	private List<Map<String, Object>> orderDetailsList;
	//=> orderDetailsView의 정보를 여러 개 넣을 수 있는 List
	//=> 1:N 관계를 처리하는 collection 엘리먼트 이용
	
	public OrderVO getOrderVo() {
		return orderVo;
	}
	public void setOrderVo(OrderVO orderVo) {
		this.orderVo = orderVo;
	}
	public List<Map<String, Object>> getOrderDetailsList() {
		return orderDetailsList;
	}
	public void setOrderDetailsList(List<Map<String, Object>> orderDetailsList) {
		this.orderDetailsList = orderDetailsList;
	}
	
	@Override
	public String toString() {
		return "OrderAllVO [orderVo=" + orderVo + ", orderDetailsList=" + orderDetailsList + "]";
	}
	
	
}
