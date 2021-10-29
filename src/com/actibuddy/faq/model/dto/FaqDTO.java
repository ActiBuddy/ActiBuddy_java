package com.actibuddy.faq.model.dto;

import java.util.Date;

public class FaqDTO {


	private String userId;
	private String queTitle;
	private String queCon;
	private String queEmail;
	private String queType;
	
	
	public FaqDTO() {
		super();
	}


	public FaqDTO(String queNo, String userId, String queTitle, String queCon, String queEmail, String queType,
			Date date) {
		super();
		this.userId = userId;
		this.queTitle = queTitle;
		this.queCon = queCon;
		this.queEmail = queEmail;
		this.queType = queType;
	}




	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getQueTitle() {
		return queTitle;
	}


	public void setQueTitle(String queTitle) {
		this.queTitle = queTitle;
	}


	public String getQueCon() {
		return queCon;
	}


	public void setQueCon(String queCon) {
		this.queCon = queCon;
	}


	public String getQueEmail() {
		return queEmail;
	}


	public void setQueEmail(String queEmail) {
		this.queEmail = queEmail;
	}


	public String getQueType() {
		return queType;
	}


	public void setQueType(String queType) {
		this.queType = queType;
	}




	@Override
	public String toString() {
		return "FaqDTO [userId=" + userId + ", queTitle=" + queTitle + ", queCon=" + queCon
				+ ", queEmail=" + queEmail + ", queType=" + queType + "]";
	}
	
	
	
	
	
}