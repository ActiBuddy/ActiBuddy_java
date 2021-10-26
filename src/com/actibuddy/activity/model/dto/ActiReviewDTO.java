package com.actibuddy.activity.model.dto;

import java.sql.Date;

public class ActiReviewDTO implements java.io.Serializable{
	
	private String num;
	private Date writeDate;
	private String actiNum;
	private String writerId;
	private String title;
	private String content;
	private double reviewStar;
	private String image;
	private int recommend;
	private char recYn;
	
	
	public ActiReviewDTO() {

	}

	public ActiReviewDTO(String num, Date writeDate, String actiNum, String userId, String title, String content,
			double reviewStar, String image, int recommend, char recYn) {
		super();
		this.num = num;
		this.writeDate = writeDate;
		this.actiNum = actiNum;
		this.writerId = writerId;
		this.title = title;
		this.content = content;
		this.reviewStar = reviewStar;
		this.image = image;
		this.recommend = recommend;
		this.recYn = recYn;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getActiNum() {
		return actiNum;
	}

	public void setActiNum(String actiNum) {
		this.actiNum = actiNum;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String userId) {
		this.writerId = userId;
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
		return "ActiReview [num=" + num + ", writeDate=" + writeDate + ", actiNum=" + actiNum + ", writerId=" + writerId
				+ ", title=" + title + ", content=" + content + ", reviewStar=" + reviewStar + ", image=" + image
				+ ", recommend=" + recommend + ", recYn=" + recYn + "]";
	}
}
