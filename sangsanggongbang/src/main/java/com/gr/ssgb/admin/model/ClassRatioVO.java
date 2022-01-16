package com.gr.ssgb.admin.model;

public class ClassRatioVO {
	private String categoryName;
	private int cnt;
	private float ratio;
	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public float getRatio() {
		return ratio;
	}
	public void setRatio(int totalCnt) {
		this.ratio = Math.round(cnt/(float)totalCnt*1000/10.0f);
	}
	@Override
	public String toString() {
		return "ClassRatioVO [categoryName=" + categoryName + ", cnt=" + cnt + ", ratio=" + ratio + "]";
	}
	
	
	
	
	
}
