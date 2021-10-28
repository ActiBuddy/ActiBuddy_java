package com.actibuddy.mypage.model.dto;

public class PayHisDTO implements java.io.Serializable{
	
	private String payNum;
	private String cartNum;
	private String PayStatus;
	private String UseYn;
	
	
	public PayHisDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public PayHisDTO(String payNum, String cartNum, String payStatus, String useYn) {
		super();
		this.payNum = payNum;
		this.cartNum = cartNum;
		PayStatus = payStatus;
		UseYn = useYn;
	}


	public String getPayNum() {
		return payNum;
	}


	public void setPayNum(String payNum) {
		this.payNum = payNum;
	}


	public String getCartNum() {
		return cartNum;
	}


	public void setCartNum(String cartNum) {
		this.cartNum = cartNum;
	}


	public String getPayStatus() {
		return PayStatus;
	}


	public void setPayStatus(String payStatus) {
		PayStatus = payStatus;
	}


	public String getUseYn() {
		return UseYn;
	}


	public void setUseYn(String useYn) {
		UseYn = useYn;
	}


	@Override
	public String toString() {
		return "PayHisDTO [payNum=" + payNum + ", cartNum=" + cartNum + ", PayStatus=" + PayStatus + ", UseYn=" + UseYn
				+ "]";
	}
	
	

}
