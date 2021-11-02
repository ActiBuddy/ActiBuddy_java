package com.actibuddy.partnership.model.DTO;

import java.util.Date;

public class PartnerDTO {

	private String ownerTitle;
	private String ownerNum;
	private String userId;
	private String logo;
	private String startDate;
	private String endDate;
	
	public PartnerDTO() {
		super();
	}

	public PartnerDTO(String ownerTitle, String ownerNum, String userId, String logo, String startDate, String endDate) {
		super();
		this.ownerTitle = ownerTitle;
		this.ownerNum = ownerNum;
		this.userId = userId;
		this.logo = logo;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public String getOwnerTitle() {
		return ownerTitle;
	}

	public void setOwnerTitle(String ownerTitle) {
		this.ownerTitle = ownerTitle;
	}

	public String getOwnerNum() {
		return ownerNum;
	}

	public void setOwnerNum(String ownerNum) {
		this.ownerNum = ownerNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	@Override
	public String toString() {
		return "PartnerDTO [ownerTitle=" + ownerTitle + ", ownerNum=" + ownerNum + ", userId=" + userId + ", logo="
				+ logo + ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}
	
	
	
	
}
