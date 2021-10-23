package com.actibuddy.activity.model.dto;

import java.sql.Date;

public class ActiReview implements java.io.Serializable{
	
	private int reviewNum;
	private Date writeDate;
	private int actiNum;
	private String userId;
	private String title;
	private String content;
	private double reviewStar;
	private String image;
	private int recommend;
	private char recYn;
	
	public ActiReview() {
	}

	public ActiReview(int reviewNum, Date writeDate, int actiNum, String userId, String title, String content,
			double reviewStar, String image, int recommend, char recYn) {
		super();
		this.reviewNum = reviewNum;
		this.writeDate = writeDate;
		this.actiNum = actiNum;
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.reviewStar = reviewStar;
		this.image = image;
		this.recommend = recommend;
		this.recYn = recYn;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getActiNum() {
		return actiNum;
	}

	public void setActiNum(int actiNum) {
		this.actiNum = actiNum;
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
		return "ActiReview [reviewNum=" + reviewNum + ", writeDate=" + writeDate + ", actiNum=" + actiNum + ", userId="
				+ userId + ", title=" + title + ", content=" + content + ", reviewStar=" + reviewStar + ", image="
				+ image + ", recommend=" + recommend + ", recYn=" + recYn + "]";
	}

	
	
}