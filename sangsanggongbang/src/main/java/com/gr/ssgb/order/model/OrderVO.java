package com.gr.ssgb.order.model;

import java.sql.Timestamp;

import com.gr.ssgb.member.model.MemberVO;

public class OrderVO extends MemberVO {
	/*
	ORDER_ID	VARCHAR2	결제id
	PAY_TYPE	VARCHAR2	결제유형
	C_NO	NUMBER			클래스넘버
	PAY_ID	VARCHAR2		merchant_uid 영수증번호 넣기	
	M_ID	NUMBER			맴버아이디
	PAY_DATE	DATE		결제일
	PRICE	NUMBER			결제금액
	CARD_NO	NUMBER			카드번호
	EA	NUMBER				결제수량
	REFUND	VARCHAR2		취소 플래그
	ORDER_NO NUMBER			결제번호
	*/
	
	private String orderId;
	private String payType;
	private int cNo;
	private String payId;
	private String mId;
	private Timestamp payDate;
	private int price;
	private int cardNo;
	private int ea;
	private String refund;
	private int orderNo;
	
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
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	
	@Override
	public String toString() {
		return "OrderVO [orderId=" + orderId + ", payType=" + payType + ", cNo=" + cNo + ", payId=" + payId + ", mId="
				+ mId + ", payDate=" + payDate + ", price=" + price + ", cardNo=" + cardNo + ", ea=" + ea + ", refund="
				+ refund + ", orderNo=" + orderNo + "]";
	}

	
	
	
	
	
}
