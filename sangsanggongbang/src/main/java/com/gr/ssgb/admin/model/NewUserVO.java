package com.gr.ssgb.admin.model;

public class NewUserVO {
	private int newMember;
	private int newhost;
	public int getNewMember() {
		return newMember;
	}
	public void setNewMember(int newMember) {
		this.newMember = newMember;
	}
	public int getNewhost() {
		return newhost;
	}
	public void setNewhost(int newhost) {
		this.newhost = newhost;
	}
	@Override
	public String toString() {
		return "NewUserVO [newMember=" + newMember + ", newhost=" + newhost + "]";
	}
	
	
	
}
