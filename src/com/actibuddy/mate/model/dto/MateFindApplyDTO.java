package com.actibuddy.mate.model.dto;

public class MateFindApplyDTO {

	private String num;
	private char accYn;
	private String applyNum;
	private String applyedId;

	public MateFindApplyDTO() {
	
	}

	public MateFindApplyDTO(String num, char accYn, String applyNum, String applyedId) {
		super();
		this.num = num;
		this.accYn = accYn;
		this.applyNum = applyNum;
		this.applyedId = applyedId;
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

	public String getApplyedId() {
		return applyedId;
	}

	public void setApplyedId(String applyedId) {
		this.applyedId = applyedId;
	}

	@Override
	public String toString() {
		return "MateFindApplyDTO [num=" + num + ", accYn=" + accYn + ", applyNum=" + applyNum + ", applyedId="
				+ applyedId + "]";
	}

	
}
