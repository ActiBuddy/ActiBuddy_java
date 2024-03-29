package com.actibuddy.mypage.model.dto;

import java.sql.Date;

public class PayResultDTO implements java.io.Serializable{

	
	private String actiNum;
	private String cartNum;
	private String userId;
	private String chooseOption;
	private int totalPerson;
	private int totalPrice;
	private Date ChooseDate;
	private String actiName;
	private String img;
	
	public PayResultDTO() {
	}

	public PayResultDTO(String actiNum, String cartNum, String userId, String chooseOption, int totalPerson,
			int totalPrice, Date chooseDate, String actiName, String img) {
		super();
		this.actiNum = actiNum;
		this.cartNum = cartNum;
		this.userId = userId;
		this.chooseOption = chooseOption;
		this.totalPerson = totalPerson;
		this.totalPrice = totalPrice;
		ChooseDate = chooseDate;
		this.actiName = actiName;
		this.img = img;
	}

	public String getActiNum() {
		return actiNum;
	}

	public void setActiNum(String actiNum) {
		this.actiNum = actiNum;
	}

	public String getCartNum() {
		return cartNum;
	}

	public void setCartNum(String cartNum) {
		this.cartNum = cartNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getChooseOption() {
		return chooseOption;
	}

	public void setChooseOption(String chooseOption) {
		this.chooseOption = chooseOption;
	}

	public int getTotalPerson() {
		return totalPerson;
	}

	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getChooseDate() {
		return ChooseDate;
	}

	public void setChooseDate(Date chooseDate) {
		ChooseDate = chooseDate;
	}

	public String getActiName() {
		return actiName;
	}

	public void setActiName(String actiName) {
		this.actiName = actiName;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "PayResultDTO [actiNum=" + actiNum + ", cartNum=" + cartNum + ", userId=" + userId + ", chooseOption="
				+ chooseOption + ", totalPerson=" + totalPerson + ", totalPrice=" + totalPrice + ", ChooseDate="
				+ ChooseDate + ", actiName=" + actiName + ", img=" + img + "]";
	}
	
	
	
	
}
