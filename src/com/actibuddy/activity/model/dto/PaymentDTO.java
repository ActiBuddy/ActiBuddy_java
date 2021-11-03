package com.actibuddy.activity.model.dto;

import java.sql.Date;

public class PaymentDTO implements java.io.Serializable {
	
	private String payNum;
	private java.sql.Date payDate;
	
	public PaymentDTO() {
	}

	public PaymentDTO(String payNum, Date payDate) {
		super();
		this.payNum = payNum;
		this.payDate = payDate;
	}

	public String getPayNum() {
		return payNum;
	}

	public void setPayNum(String payNum) {
		this.payNum = payNum;
	}

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}

	@Override
	public String toString() {
		return "PaymentDTO [payNum=" + payNum + ", payDate=" + payDate + "]";
	}
	
	
	

}
