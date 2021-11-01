package com.actibuddy.faq.model.dto;

import java.util.Date;

public class FaqDTO {

	private int queNo;
	private String userId;
	private String queTitle;
	private String queCon;
	private String queEmail;
	private String queType;
	private Date date;
	private String answer;
	private String answerYn;
	
	public FaqDTO() {
		super();
	}
	

	public FaqDTO(int queNo, String userId, String queTitle, String queCon, String queEmail, String queType, Date date,
			String answer, String answerYn) {
		super();
		this.queNo = queNo;
		this.userId = userId;
		this.queTitle = queTitle;
		this.queCon = queCon;
		this.queEmail = queEmail;
		this.queType = queType;
		this.date = date;
		this.answer = answer;
		this.answerYn = answerYn;
	}





	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getAnswerYn() {
		return answerYn;
	}


	public void setAnswerYn(String answerYn) {
		this.answerYn = answerYn;
	}


	public int getQueNo() {
		return queNo;
	}


	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
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
		return "FaqDTO [queNo=" + queNo + ", userId=" + userId + ", queTitle=" + queTitle + ", queCon=" + queCon
				+ ", queEmail=" + queEmail + ", queType=" + queType + ", date=" + date + ", answer=" + answer
				+ ", answerYn=" + answerYn + "]";
	}
	
	
	
}