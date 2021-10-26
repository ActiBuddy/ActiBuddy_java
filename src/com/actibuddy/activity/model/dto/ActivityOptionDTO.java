package com.actibuddy.activity.model.dto;

public class ActivityOptionDTO implements java.io.Serializable{
	
	private String optionNum;
	private int price;
	private String optionName;
	private String actiNum;
	
	public ActivityOptionDTO() {
	}

	public ActivityOptionDTO(String optionNum, int price, String optionName, String actiNum) {
		super();
		this.optionNum = optionNum;
		this.price = price;
		this.optionName = optionName;
		this.actiNum = actiNum;
	}

	public String getOptionNum() {
		return optionNum;
	}

	public void setOptionNum(String optionNum) {
		this.optionNum = optionNum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public String getActiNum() {
		return actiNum;
	}

	public void setActiNum(String actiNum) {
		this.actiNum = actiNum;
	}

	@Override
	public String toString() {
		return "ActivityOptionDTO [optionNum=" + optionNum + ", price=" + price + ", optionName=" + optionName
				+ ", actiNum=" + actiNum + "]";
	}
	
	

}
