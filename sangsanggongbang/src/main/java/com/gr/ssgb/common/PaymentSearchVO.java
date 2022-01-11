package com.gr.ssgb.common;

public class PaymentSearchVO extends SearchVO{
	private int mNo;
	private String paylistNo;

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	

	public String getPaylistNo() {
		return paylistNo;
	}

	public void setPaylistNo(String paylistNo) {
		this.paylistNo = paylistNo;
	}

	@Override
	public String toString() {
		return "PaymentSearchVO [mNo=" + mNo + ", paylistNo=" + paylistNo + ", toString()=" + super.toString() + "]";
	}
	
	
}
