package com.actibuddy.activity.model.dto;

import java.sql.Date;
import java.util.List;

public class ActivityDTO implements java.io.Serializable{
	
	private int code;
	private String name;
	private String location;
	private int price;
	private Date StartDate;
	private Date EndDate;
	private String tip;
	private String image;
	private String loactionCode;
	private String activitTypeCode;
	private String userId;
	
	public ActivityDTO() {

	}

	public ActivityDTO(int code, String name, String location, int price, Date startDate, Date endDate, String tip,
			String image, String loactionCode, String activitTypeCode, String userId) {
		super();
		this.code = code;
		this.name = name;
		this.location = location;
		this.price = price;
		StartDate = startDate;
		EndDate = endDate;
		this.tip = tip;
		this.image = image;
		this.loactionCode = loactionCode;
		this.activitTypeCode = activitTypeCode;
		this.userId = userId;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getStartDate() {
		return StartDate;
	}

	public void setStartDate(Date startDate) {
		StartDate = startDate;
	}

	public Date getEndDate() {
		return EndDate;
	}

	public void setEndDate(Date endDate) {
		EndDate = endDate;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLoactionCode() {
		return loactionCode;
	}

	public void setLoactionCode(String loactionCode) {
		this.loactionCode = loactionCode;
	}

	public String getActivitTypeCode() {
		return activitTypeCode;
	}

	public void setActivitTypeCode(String activitTypeCode) {
		this.activitTypeCode = activitTypeCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "ActivityDTO [code=" + code + ", name=" + name + ", location=" + location + ", price=" + price
				+ ", StartDate=" + StartDate + ", EndDate=" + EndDate + ", tip=" + tip + ", image=" + image
				+ ", loactionCode=" + loactionCode + ", activitTypeCode=" + activitTypeCode + ", userId=" + userId
				+ "]";
	}

	
}