package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderServiceImpl implements OrderService{
	private final OrderDAO orderDao;
	
	@Autowired 
	public OrderServiceImpl(OrderDAO orderDao) {
		this.orderDao = orderDao;
	}
	
	@Override
	@Transactional
	public int insertOrder(OrderVO orderVo) {
		int cnt=orderDao.insertOrder(orderVo);
		System.out.println("insert 후 orderVo="+ orderVo);
		
		//cnt=orderDao.insertOrderDetail(orderVo);
		//cnt=cartDao.deleteCartByUserid(vo.getCustomerId());
		
		return cnt;
	}

	@Override
	public OrderVO selectOrders(String merchantUid) {
		return orderDao.selectOrders(merchantUid);
	}


	
	/*
	@Override
	public List<Map<String, Object>> selectOrderDetailsView(int orderNo) {
		return orderDao.selectOrderDetailsView(orderNo);
	}
	
	@Override
	public Map<String, Object> selectOrdersView(int orderNo) {
		return orderDao.selectOrdersView(orderNo);
	}
	@Override
	public List<OrderAllVO> selectOrderAll(DateSearchVO dateSearchVo) {
		return orderDao.selectOrderAll(dateSearchVo);
	}

	@Override
	public int selectTotalRecord(DateSearchVO dateSearchVo) {
		return orderDao.selectTotalRecord(dateSearchVo);
	}
	*/

	
}
