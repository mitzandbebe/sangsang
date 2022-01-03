package com.gr.ssgb.paymentList.model;

public class PaymentListVO {
	private String col; //결제번호 
	private int uNo; //개인회원번호
	private int cCode; //클래스번호
	private int couponNo; //쿠폰발급번호
	private int qty; //수량
	private String endFlag; //클래스 종료여부
	public String getCol() {
		return col;
	}
	public void setCol(String col) {
		this.col = col;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getcCode() {
		return cCode;
	}
	public void setcCode(int cCode) {
		this.cCode = cCode;
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
	public String getEndFlag() {
		return endFlag;
	}
	public void setEndFlag(String endFlag) {
		this.endFlag = endFlag;
	}
	
	@Override
	public String toString() {
		return "PaymentListVO [col=" + col + ", uNo=" + uNo + ", cCode=" + cCode + ", couponNo=" + couponNo + ", qty="
				+ qty + ", endFlag=" + endFlag + "]";
	}
	
	
	
	
}
