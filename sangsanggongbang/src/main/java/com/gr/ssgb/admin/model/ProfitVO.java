package com.gr.ssgb.admin.model;

public class ProfitVO {
	private static final double PROFITRATE = 0.1;
	private int totalProfitPerMonth;
	private int totalNetProfitPerMonth;
	
	
	public void setTotalProfit(int totalProfitPerMonth) {
		this.totalProfitPerMonth = totalProfitPerMonth;
		this.totalNetProfitPerMonth = (int)(PROFITRATE * this.totalProfitPerMonth);
	}


	public int getTotalProfitPerMonth() {
		return totalProfitPerMonth;
	}


	public int getTotalNetProfitPerMonth() {
		return totalNetProfitPerMonth;
	}


}
