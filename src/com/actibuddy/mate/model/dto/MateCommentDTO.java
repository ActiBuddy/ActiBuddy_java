package com.actibuddy.mate.model.dto;

import java.sql.Date;

public class MateCommentDTO implements java.io.Serializable{

	private String num;
	private char repYn;
	private String comment;
	private String userId;
	private String findNum;
	private Date date;

	public MateCommentDTO() {

	}

	public MateCommentDTO(String num, char repYn, String comment, String userId, String findNum, Date date) {
		super();
		this.num = num;
		this.repYn = repYn;
		this.comment = comment;
		this.userId = userId;
		this.findNum = findNum;
		this.date = date;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public char getRepYn() {
		return repYn;
	}

	public void setRepYn(char repYn) {
		this.repYn = repYn;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFindNum() {
		return findNum;
	}

	public void setFindNum(String findNum) {
		this.findNum = findNum;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "MateCommentDTO [num=" + num + ", repYn=" + repYn + ", comment=" + comment + ", userId=" + userId
				+ ", findNum=" + findNum + ", date=" + date + "]";
	}
}
