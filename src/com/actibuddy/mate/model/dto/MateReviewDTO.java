package com.actibuddy.mate.model.dto;

import java.sql.Date;

public class MateReviewDTO {

	private String num;
	private String title;
	private String img1;
	private String img2;
	private String img3;
	private String content;
	private java.sql.Date date;
	private String repYn;
	private String userId;
	private int recommend;
	
	public MateReviewDTO() {
	
	}
	
	public MateReviewDTO(String num, String title, String img1, String img2, String img3, String content, Date date,
			String repYn, String userId, int recommend) {
		super();
		this.num = num;
		this.title = title;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.content = content;
		this.date = date;
		this.repYn = repYn;
		this.userId = userId;
		this.recommend = recommend;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public String getRepYn() {
		return repYn;
	}
	public void setRepYn(String repYn) {
		this.repYn = repYn;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	
	@Override
	public String toString() {
		return "MateReviewDTO [num=" + num + ", title=" + title + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3
				+ ", content=" + content + ", date=" + date + ", repYn=" + repYn + ", userId=" + userId + ", recommend="
				+ recommend + "]";
	}
	
	
	
}
