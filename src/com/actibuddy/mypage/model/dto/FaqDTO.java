package com.actibuddy.mypage.model.dto;

import java.sql.Date;

public class FaqDTO {
	
		private String userId;
		private String queNum;
		private String queCon;
		private String title;
		private Date queDate;
		private String queType;
		
		
		public FaqDTO() {
			super();
			// TODO Auto-generated constructor stub
		}


		public FaqDTO(String userId, String queNum, String queCon, String title, Date queDate, String queType) {
			super();
			this.userId = userId;
			this.queNum = queNum;
			this.queCon = queCon;
			this.title = title;
			this.queDate = queDate;
			this.queType = queType;
		}


		public String getUserId() {
			return userId;
		}


		public void setUserId(String userId) {
			this.userId = userId;
		}


		public String getQueNum() {
			return queNum;
		}


		public void setQueNum(String queNum) {
			this.queNum = queNum;
		}


		public String getQueCon() {
			return queCon;
		}


		public void setQueCon(String queCon) {
			this.queCon = queCon;
		}


		public String getTitle() {
			return title;
		}


		public void setTitle(String title) {
			this.title = title;
		}


		public Date getQueDate() {
			return queDate;
		}


		public void setQueDate(Date queDate) {
			this.queDate = queDate;
		}


		public String getQueType() {
			return queType;
		}


		public void setQueType(String queType) {
			this.queType = queType;
		}


		@Override
		public String toString() {
			return "FaqDTO [userId=" + userId + ", queNum=" + queNum + ", queCon=" + queCon + ", title=" + title
					+ ", queDate=" + queDate + ", queType=" + queType + "]";
		}
		
		

}
