package com.actibuddy.activity.model.dto;

import java.sql.Date;
import java.util.List;

public class SearchDTO implements java.io.Serializable{
	
	private String actiName;
	private int price;
	private Date startDate;
	private Date endDate;
	private String tip;
	private String image;
	private List<ActivityDTO> actiList;
	
	public SearchDTO() {

	}

	public SearchDTO(String actiName, int price, Date startDate, Date endDate, String tip, String image,
			List<ActivityDTO> actiList) {
		super();
		this.actiName = actiName;
		this.price = price;
		this.startDate = startDate;
		this.endDate = endDate;
		this.tip = tip;
		this.image = image;
		this.actiList = actiList;
	}

	public String getActiName() {
		return actiName;
	}

	public void setActiName(String actiName) {
		this.actiName = actiName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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

	public List<ActivityDTO> getReviewList() {
		return actiList;
	}

	public void setReviewList(List<ActivityDTO> actiList) {
		this.actiList = actiList;
	}

	@Override
	public String toString() {
		return "SearchDTO [actiName=" + actiName + ", price=" + price + ", startDate=" + startDate + ", endDate="
				+ endDate + ", tip=" + tip + ", image=" + image + ", actiList=" + actiList + "]";
	}
}
