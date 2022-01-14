package com.gr.ssgb.common;

public class PaymentSearchVO extends SearchVO{
	private String merchantUid;
	private String mId;
	
	
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	@Override
	public String toString() {
		return "PaymentSearchVO [merchantUid=" + merchantUid + ", mId=" + mId + ", toString()=" + super.toString()
				+ "]";
	}
	
	

	
	
}
