package com.actibuddy.activity.model.dto;

public class LocationDTO implements java.io.Serializable{

	private int code;
	private String name;
	private String info;
	private String image;
	private String tip;
	private String visitMonth;
	private String visitName;
	private String mainImg;
	
	public LocationDTO() {

	}

	public LocationDTO(int code, String name, String info, String image, String tip, String visitMonth,
			String visitName, String mainImg) {
		super();
		this.code = code;
		this.name = name;
		this.info = info;
		this.image = image;
		this.tip = tip;
		this.visitMonth = visitMonth;
		this.visitName = visitName;
		this.mainImg = mainImg;
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

	public String getVisitMonth() {
		return visitMonth;
	}

	public void setVisitMonth(String visitMonth) {
		this.visitMonth = visitMonth;
	}

	public String getVisitName() {
		return visitName;
	}

	public void setVisitName(String visitName) {
		this.visitName = visitName;
	}
	
	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	@Override
	public String toString() {
		return "LocationDTO [code=" + code + ", name=" + name + ", info=" + info + ", image=" + image + ", tip=" + tip
				+ ", visitMonth=" + visitMonth + ", visitName=" + visitName + ", mainImg" + mainImg + "]";
	}

	
}
