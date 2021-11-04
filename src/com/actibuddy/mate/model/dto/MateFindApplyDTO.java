package com.actibuddy.mate.model.dto;

public class MateFindApplyDTO {

	private String num;
	private char accYn;
	private String applyNum;
	private String userId;

	public MateFindApplyDTO() {
	
	}

	public MateFindApplyDTO(String num, char accYn, String applyNum, String userId) {
		super();
		this.num = num;
		this.accYn = accYn;
		this.applyNum = applyNum;
		this.userId = userId;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public char getAccYn() {
		return accYn;
	}
	public void setAccYn(char accYn) {
		this.accYn = accYn;
	}
	public String getApplyNum() {
		return applyNum;
	}
	public void setApplyNum(String applyNum) {
		this.applyNum = applyNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "MateFindApplyDTO [num=" + num + ", accYn=" + accYn + ", applyNum=" + applyNum + ", userId=" + userId
				+ "]";
	}
	
}
