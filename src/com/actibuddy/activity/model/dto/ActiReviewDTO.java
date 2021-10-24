package com.actibuddy.activity.model.dto;

import java.sql.Date;

public class ActiReviewDTO implements java.io.Serializable{
	
	private int num;
	private Date writeDate;
	private int acitNum;
	private String userId;
	private String title;
	private String content;
	private double reviewStar;
	private String image;
	private int recommend;
	private char recYn;
	
	
	public ActiReviewDTO() {

	}

	public ActiReviewDTO(int num, Date writeDate, int acitNum, String userId, String title, String content,
			double reviewStar, String image, int recommend, char recYn) {
		super();
		this.num = num;
		this.writeDate = writeDate;
		this.acitNum = acitNum;
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.reviewStar = reviewStar;
		this.image = image;
		this.recommend = recommend;
		this.recYn = recYn;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getAcitNum() {
		return acitNum;
	}

	public void setAcitNum(int acitNum) {
		this.acitNum = acitNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public double getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(double reviewStar) {
		this.reviewStar = reviewStar;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public char getRecYn() {
		return recYn;
	}

	public void setRecYn(char recYn) {
		this.recYn = recYn;
	}

	@Override
	public String toString() {
		return "ActiReview [num=" + num + ", writeDate=" + writeDate + ", acitNum=" + acitNum + ", userId=" + userId
				+ ", title=" + title + ", content=" + content + ", reviewStar=" + reviewStar + ", image=" + image
				+ ", recommend=" + recommend + ", recYn=" + recYn + "]";
	}
}
