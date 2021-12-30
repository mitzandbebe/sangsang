package com.gr.ssgb.member.model;

public class PaymentVO {
	private int mNo;
	private String pType;
	private String payNick;
	private String cardCom;
	private String cardNum;
	private int cvc;
	private String cardExp;
	private String bankName;
	private String accNum;
	private String cPwd;
	
	public PaymentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PaymentVO(int mNo, String pType, String payNick, String cardCom, String cardNum, int cvc, String cardExp,
			String bankName, String accNum, String cPwd) {
		super();
		this.mNo = mNo;
		this.pType = pType;
		this.payNick = payNick;
		this.cardCom = cardCom;
		this.cardNum = cardNum;
		this.cvc = cvc;
		this.cardExp = cardExp;
		this.bankName = bankName;
		this.accNum = accNum;
		this.cPwd = cPwd;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getPayNick() {
		return payNick;
	}
	public void setPayNick(String payNick) {
		this.payNick = payNick;
	}
	public String getCardCom() {
		return cardCom;
	}
	public void setCardCom(String cardCom) {
		this.cardCom = cardCom;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public int getCvc() {
		return cvc;
	}
	public void setCvc(int cvc) {
		this.cvc = cvc;
	}
	public String getCardExp() {
		return cardExp;
	}
	public void setCardExp(String cardExp) {
		this.cardExp = cardExp;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccNum() {
		return accNum;
	}
	public void setAccNum(String accNum) {
		this.accNum = accNum;
	}
	public String getcPwd() {
		return cPwd;
	}
	public void setcPwd(String cPwd) {
		this.cPwd = cPwd;
	}
	@Override
	public String toString() {
		return "PaymentVO [mNo=" + mNo + ", pType=" + pType + ", payNick=" + payNick + ", cardCom=" + cardCom
				+ ", cardNum=" + cardNum + ", cvc=" + cvc + ", cardExp=" + cardExp + ", bankName=" + bankName
				+ ", accNum=" + accNum + ", cPwd=" + cPwd + "]";
	}
	
	
}
