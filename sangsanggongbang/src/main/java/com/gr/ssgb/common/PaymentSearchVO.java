package com.gr.ssgb.common;

public class PaymentSearchVO extends SearchVO{
	private int mNo;

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "PaymentSearchVO [mNo=" + mNo + ", toString()=" + super.toString() + "]";
	}
	
	
}
