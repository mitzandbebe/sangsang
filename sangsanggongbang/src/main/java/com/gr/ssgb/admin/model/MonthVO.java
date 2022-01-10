package com.gr.ssgb.admin.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class MonthVO {
	private String startDate;
	private String endDate;
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(int month, int term) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		int year = 2022;
		int day = 1;
		if(month==1) {
			month = 13-term;
			year = 2021;
		}
        Calendar cal = Calendar.getInstance();
        
        cal.set(year, month-1, day);
        
		this.startDate = dateFormat.format(cal.getTime());
		int temp = cal.getMaximum(Calendar.DAY_OF_MONTH);
		cal.set(year, month-1, temp);
		this.endDate = dateFormat.format(cal.getTime());
	}
	public String getEndDate() {
		return endDate;
	}
	@Override
	public String toString() {
		return "MonthVO [startDate=" + startDate + ", endDate=" + endDate + "]";
	}
	
}
