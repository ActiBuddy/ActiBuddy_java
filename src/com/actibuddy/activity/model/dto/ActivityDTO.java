package com.actibuddy.activity.model.dto;

import java.sql.Date;
import java.util.List;

public class ActivityDTO implements java.io.Serializable{
	
	private String code;
	private String name;
	private String location;
	private int price;
	private Date StartDate;
	private Date EndDate;
	private String tip;
	private String image;
	private String image2;
	private String image3;
	private String loactionCode;
	private String activitTypeCode;
	private String userId;
	private int views;
	private double star;
	private int actiNo;
	private String mainImg;
	
	public ActivityDTO() {

	}

	public ActivityDTO(String code, String name, String location, int price, Date startDate, Date endDate, String tip,
			String image, String image2, String image3, String loactionCode, String activitTypeCode, String userId,
			int views, double star, int actiNo, String mainImg) {
		super();
		this.code = code;
		this.name = name;
		this.location = location;
		this.price = price;
		StartDate = startDate;
		EndDate = endDate;
		this.tip = tip;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		this.loactionCode = loactionCode;
		this.activitTypeCode = activitTypeCode;
		this.userId = userId;
		this.views = views;
		this.star = star;
		this.actiNo = actiNo;
		this.mainImg = mainImg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
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

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
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

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	public int getActiNo() {
		return actiNo;
	}

	public void setActiNo(int actiNo) {
		this.actiNo = actiNo;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	@Override
	public String toString() {
		return "ActivityDTO [code=" + code + ", name=" + name + ", location=" + location + ", price=" + price
				+ ", StartDate=" + StartDate + ", EndDate=" + EndDate + ", tip=" + tip + ", image=" + image
				+ ", image2=" + image2 + ", image3=" + image3 + ", loactionCode=" + loactionCode + ", activitTypeCode="
				+ activitTypeCode + ", userId=" + userId + ", views=" + views + ", star=" + star + ", actiNo=" + actiNo
				+ ", mainImg=" + mainImg + "]";
	}


	
}