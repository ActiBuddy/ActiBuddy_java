package com.actibuddy.member.model.dto;

import java.util.Map;

public class MemberDTO {

	private String userId;
	private String userName;
	private String pwd;
	private String email;
	private String birth;
	private String gender;
	private int warn_count;
	private String quitYn;
	private String memType;
	private String memPhone;
	private String introduce;
	private String favoriteActi;
	
//	USER_NAME, USER_ID, PASSWORD, EMAIL, BIRTH, GENDER, WARN_COUNT, QUIT_YN, MEM_TYPE, MEM_PHONE
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String userId, String userName, String pwd, String email, String birth, String gender,
			int warn_count, String quitYn, String memType, String memPhone, String introduce, String favoriteActi) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.pwd = pwd;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.warn_count = warn_count;
		this.quitYn = quitYn;
		this.memType = memType;
		this.memPhone = memPhone;
		this.introduce = introduce;
		this.favoriteActi = favoriteActi;
	}


	public String getUserId() {
			return userId;
		}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getBirth() {
		return birth;
	}



	public void setBirth(String birth) {
		this.birth = birth;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public int getWarn_count() {
		return warn_count;
	}



	public void setWarn_count(int warn_count) {
		this.warn_count = warn_count;
	}



	public String getQuitYn() {
		return quitYn;
	}



	public void setQuitYn(String quitYn) {
		this.quitYn = quitYn;
	}



	public String getMemType() {
		return memType;
	}



	public void setMemType(String memType) {
		this.memType = memType;
	}



	public String getMemPhone() {
		return memPhone;
	}



	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}



	public String getIntroduce() {
		return introduce;
	}



	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}



	public String getFavoriteActi() {
		return favoriteActi;
	}



	public void setFavoriteActi(String favoriteActi) {
		this.favoriteActi = favoriteActi;
	}



@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userName=" + userName + ", pwd=" + pwd + ", email=" + email
				+ ", birth=" + birth + ", gender=" + gender + ", warn_count=" + warn_count + ", quitYn=" + quitYn
				+ ", memType=" + memType + ", memPhone=" + memPhone + ", introduce=" + introduce + ", favoriteActi="
				+ favoriteActi + "]";
	}

public String idcheck(String userId2) {
	// TODO Auto-generated method stub
	return null;
}
	
	
	
	
}
