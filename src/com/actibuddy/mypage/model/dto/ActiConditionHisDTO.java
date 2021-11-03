package com.actibuddy.mypage.model.dto;

public class ActiConditionHisDTO {
	
	private String actiNum;
	private String ActiConNum;
	
	public ActiConditionHisDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ActiConditionHisDTO(String actiNum, String actiConNum) {
		super();
		this.actiNum = actiNum;
		ActiConNum = actiConNum;
	}

	public String getActiNum() {
		return actiNum;
	}

	public void setActiNum(String actiNum) {
		this.actiNum = actiNum;
	}

	public String getActiConNum() {
		return ActiConNum;
	}

	public void setActiConNum(String actiConNum) {
		ActiConNum = actiConNum;
	}

	@Override
	public String toString() {
		return "ActiConditionHisDTO [actiNum=" + actiNum + ", ActiConNum=" + ActiConNum + "]";
	}
	
	

}
