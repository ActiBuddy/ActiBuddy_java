package com.actibuddy.mypage.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.actibuddy.mate.model.dto.MateFindApplyDTO;

public class MTFindApplyDTO implements Serializable{
	
	
	private String num;
	private String title;
	private String userId;
	private String content;
	private char repYn;
	private java.sql.Date date;
	private String location;
	private String imgName;
	private int view;
	private String gender;
	private int people;
	private int age;
	private java.sql.Date deadline;
	private String state;
	private int count;
	private List<MateFindApplyDTO> applyList;
	
	
	public MTFindApplyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MTFindApplyDTO(String num, String title, String userId, String content, char repYn, Date date,
			String location, String imgName, int view, String gender, int people, int age, Date deadline, String state,
			int count, List<MateFindApplyDTO> applyList) {
		super();
		this.num = num;
		this.title = title;
		this.userId = userId;
		this.content = content;
		this.repYn = repYn;
		this.date = date;
		this.location = location;
		this.imgName = imgName;
		this.view = view;
		this.gender = gender;
		this.people = people;
		this.age = age;
		this.deadline = deadline;
		this.state = state;
		this.count = count;
		this.applyList = applyList;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public char getRepYn() {
		return repYn;
	}
	public void setRepYn(char repYn) {
		this.repYn = repYn;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public java.sql.Date getDeadline() {
		return deadline;
	}
	public void setDeadline(java.sql.Date deadline) {
		this.deadline = deadline;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<MateFindApplyDTO> getApplyList() {
		return applyList;
	}
	public void setApplyList(List<MateFindApplyDTO> applyList) {
		this.applyList = applyList;
	}
	@Override
	public String toString() {
		return "MTFindApplyDTO [num=" + num + ", title=" + title + ", userId=" + userId + ", content=" + content
				+ ", repYn=" + repYn + ", date=" + date + ", location=" + location + ", imgName=" + imgName + ", view="
				+ view + ", gender=" + gender + ", people=" + people + ", age=" + age + ", deadline=" + deadline
				+ ", state=" + state + ", count=" + count + ", applyList=" + applyList + "]";
	}
	
	

}
