package com.gr.ssgb.order.model;

public class OrderVO {
	/*

	IMP_UID	VARCHAR2		아임포트 상점번호
	MERCHANT_UID	VARCHAR2	영수증번호
	M_ID	NUMBER			맴버아이디
	C_NO	NUMBER			클래스넘버
	PRICE	NUMBER			결제금액
	REFUND	VARCHAR2		결제상태
	EA	NUMBER				결제수량
	F_TIME	NUMBER			확정시간

	*/
	
	private int cNo;
	private String mId;
	private int price;
	private String refund;
	private int ea;
	private String impUid;
	private String merchantUid;
	private int fTime;
	private String refundResult;
	private String reason;
	
	public String getImpUid() {
		return impUid;
	}
	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}
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
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
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

	public int getfTime() {
		return fTime;
	}
	public void setfTime(int fTime) {
		this.fTime = fTime;
	}
	
	
	public String getRefundResult() {
		return refundResult;
	}
	public void setRefundResult(String refundResult) {
		this.refundResult = refundResult;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "OrderVO [cNo=" + cNo + ", mId=" + mId + ", price=" + price + ", refund=" + refund + ", ea=" + ea
				+ ", impUid=" + impUid + ", merchantUid=" + merchantUid + ", fTime=" + fTime + ", refundResult="
				+ refundResult + ", reason=" + reason + "]";
	}
	
	

	
	
	
	
	
}
