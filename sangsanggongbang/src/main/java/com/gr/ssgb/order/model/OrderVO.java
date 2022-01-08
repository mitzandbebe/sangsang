package com.gr.ssgb.order.model;

import java.sql.Timestamp;

import com.gr.ssgb.member.model.MemberVO;

public class OrderVO extends MemberVO {
	private String orderId;
	private String payType;
	private int cNo;
	private String payId;
	private String mId;
	private Timestamp payDate;
	private int price;
	private int cardNo;
	private String refund;
	private int ea;
	/*
	private int orderNo;
	private String customerId;
	private int totalPrice;
	private String deliveryStatus;
	private Timestamp orderDate;
	private Timestamp deliveryDate;
	private Timestamp paymentEndDate;
	private String  message;
	private String  customerName;
	private String  hp;
	private String  zipcode;
	private String  address;
	private String addressDetail;
*/
	public OrderVO(String orderId, String payType, int cNo, String payId, String mId, Timestamp payDate, int price,
			int cardNo, String refund, int ea) {
		super();
		this.orderId = orderId;
		this.payType = payType;
		this.cNo = cNo;
		this.payId = payId;
		this.mId = mId;
		this.payDate = payDate;
		this.price = price;
		this.cardNo = cardNo;
		this.refund = refund;
		this.ea = ea;
	}
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getPayId() {
		return payId;
	}
	public void setPayId(String payId) {
		this.payId = payId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public Timestamp getPayDate() {
		return payDate;
	}
	public void setPayDate(Timestamp payDate) {
		this.payDate = payDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}

	@Override
	public String toString() {
		return "OrderVO [orderId=" + orderId + ", payType=" + payType + ", cNo=" + cNo + ", payId=" + payId + ", mId="
				+ mId + ", payDate=" + payDate + ", price=" + price + ", cardNo=" + cardNo + ", refund=" + refund
				+ ", ea=" + ea + ", toString()=" + super.toString() + "]";
	}
	
	
	
	
}
