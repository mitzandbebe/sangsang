package com.gr.ssgb.common;

public class TempPasswordUtil {
	public static String randomPwd() {
		String result="";
		while(result.length()<=8) {
			int random = (int)(Math.random()*26)+65;
			
			char t= (char)random;
			String temp = Character.toString(t);
			int ch = (int)(Math.random()*2+1);
			
			if(ch%2==0) {
				temp = temp.toLowerCase();
			}
			result += temp;
		}
		while(result.length()<=15) {
			int ch = (int)(Math.random()*9+1);
			result += ch;
		}
		return result;
		
	}
	
}
