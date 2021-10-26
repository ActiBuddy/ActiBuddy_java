package com.actibuddy.activity.model.dto;

public class ActivityTypeDTO implements java.io.Serializable {
	
	private String actiTypeNum;
	private String firstTypeNum;
	private String firstTypeName;
	private String secondTypeNum;
	private String secondTypeName;
	
	public ActivityTypeDTO() {
	}

	public ActivityTypeDTO(String actiTypeNum, String firstTypeNum, String firstTypeName, String secondTypeNum,
			String secondTypeName) {
		super();
		this.actiTypeNum = actiTypeNum;
		this.firstTypeNum = firstTypeNum;
		this.firstTypeName = firstTypeName;
		this.secondTypeNum = secondTypeNum;
		this.secondTypeName = secondTypeName;
	}

	public String getActiTypeNum() {
		return actiTypeNum;
	}

	public void setActiTypeNum(String actiTypeNum) {
		this.actiTypeNum = actiTypeNum;
	}

	public String getFirstTypeNum() {
		return firstTypeNum;
	}

	public void setFirstTypeNum(String firstTypeNum) {
		this.firstTypeNum = firstTypeNum;
	}

	public String getFirstTypeName() {
		return firstTypeName;
	}

	public void setFirstTypeName(String firstTypeName) {
		this.firstTypeName = firstTypeName;
	}

	public String getSecondTypeNum() {
		return secondTypeNum;
	}

	public void setSecondTypeNum(String secondTypeNum) {
		this.secondTypeNum = secondTypeNum;
	}

	public String getSecondTypeName() {
		return secondTypeName;
	}

	public void setSecondTypeName(String secondTypeName) {
		this.secondTypeName = secondTypeName;
	}

	@Override
	public String toString() {
		return "ActivityTypeDTO [actiTypeNum=" + actiTypeNum + ", firstTypeNum=" + firstTypeNum + ", firstTypeName="
				+ firstTypeName + ", secondTypeNum=" + secondTypeNum + ", secondTypeName=" + secondTypeName + "]";
	}

	
	

}
