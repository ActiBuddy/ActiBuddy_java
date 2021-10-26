package com.actibuddy.activity.model.dto;

public class ActivityConditionDTO implements java.io.Serializable {
	
	private String actiConNum;
	private String conName;
	private String conIcon;
	
	public ActivityConditionDTO() {
	}

	public ActivityConditionDTO(String actiConNum, String conName, String conIcon) {
		super();
		this.actiConNum = actiConNum;
		this.conName = conName;
		this.conIcon = conIcon;
	}

	public String getActiConNum() {
		return actiConNum;
	}

	public void setActiConNum(String actiConNum) {
		this.actiConNum = actiConNum;
	}

	public String getConName() {
		return conName;
	}

	public void setConName(String conName) {
		this.conName = conName;
	}

	public String getConIcon() {
		return conIcon;
	}

	public void setConIcon(String conIcon) {
		this.conIcon = conIcon;
	}

	@Override
	public String toString() {
		return "ActivityConditionDTO [actiConNum=" + actiConNum + ", conName=" + conName + ", conIcon=" + conIcon + "]";
	}
	
	
	

}
