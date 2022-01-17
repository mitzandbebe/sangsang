package com.gr.ssgb.admin.model;

public class NewUserVO {
	private int newMember;
	private int newHost;
	public int getNewMember() {
		return newMember;
	}
	public void setNewMember(int newMember) {
		this.newMember = newMember;
	}
	public int getNewHost() {
		return newHost;
	}
	public void setNewHost(int newHost) {
		this.newHost = newHost;
	}
	@Override
	public String toString() {
		return "NewUserVO [newMember=" + newMember + ", newHost=" + newHost + "]";
	}
	
	

	
	
}
