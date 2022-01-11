package com.gr.ssgb.paymentList.model;

public class PaymentListVO {
	private String paylistNo; //결제번호 
	private int mNo; //개인회원번호
	private int cNo; //클래스번호
	private int couponNo; //쿠폰발급번호
	private int qty; //수량
	public String getPaylistNo() {
		return paylistNo;
	}
	public void setPaylistNo(String paylistNo) {
		this.paylistNo = paylistNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	@Override
	public String toString() {
		return "PaymentListVO [paylistNo=" + paylistNo + ", mNo=" + mNo + ", cNo=" + cNo + ", couponNo=" + couponNo
				+ ", qty=" + qty + "]";
	}
	
	
	
	
	
}
