package com.actibuddy.activity.model.dto;

import java.util.List;

public class LocationDTO implements java.io.Serializable{
	
	private int code;
	private String name;
	private String info;
	private String image;
	private String tip;
	private List<ActivityDTO> activityList;
	
	public LocationDTO() {

	}

	public LocationDTO(int code, String name, String info, String image, String tip, List<ActivityDTO> activityList) {
		super();
		this.code = code;
		this.name = name;
		this.info = info;
		this.image = image;
		this.tip = tip;
		this.activityList = activityList;
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

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public List<ActivityDTO> getActivityList() {
		return activityList;
	}

	public void setActivityList(List<ActivityDTO> activityList) {
		this.activityList = activityList;
	}

	@Override
	public String toString() {
		return "LocationDTO [code=" + code + ", name=" + name + ", info=" + info + ", image=" + image + ", tip=" + tip
				+ ", activityList=" + activityList + "]";
	}
}
