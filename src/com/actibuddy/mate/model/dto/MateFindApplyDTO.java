package com.actibuddy.mate.model.dto;

public class MateFindApplyDTO {

	private String num;
	private char accYn;
	private String applyNum;
	private String appliedId;


	public MateFindApplyDTO() {
	
	}


	public MateFindApplyDTO(String num, char accYn, String applyNum, String appliedId) {
		this.num = num;
		this.accYn = accYn;
		this.applyNum = applyNum;
		this.appliedId = appliedId;
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


	public String getAppliedId() {
		return appliedId;
	}

	public void setAppliedId(String appliedId) {
		this.appliedId = appliedId;
	}

	@Override
	public String toString() {

		return "MateFindApplyDTO [num=" + num + ", accYn=" + accYn + ", applyNum=" + applyNum + ", appliedId="
				+ appliedId + "]";
	}
	
}
