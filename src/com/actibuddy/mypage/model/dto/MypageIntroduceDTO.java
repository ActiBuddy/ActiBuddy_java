package com.actibuddy.mypage.model.dto;

public class MypageIntroduceDTO {
	
	private String userId;
	private String favoriteActi;
	private String introduce;
	private String mtScoreNum;
	
	public MypageIntroduceDTO() {
	}

	public MypageIntroduceDTO(String userId, String favoriteActi, String introduce, String mtScoreNum) {
		super();
		this.userId = userId;
		this.favoriteActi = favoriteActi;
		this.introduce = introduce;
		this.mtScoreNum = mtScoreNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFavoriteActi() {
		return favoriteActi;
	}

	public void setFavoriteActi(String favoriteActi) {
		this.favoriteActi = favoriteActi;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getMtScoreNum() {
		return mtScoreNum;
	}

	public void setMtScoreNum(String mtScoreNum) {
		this.mtScoreNum = mtScoreNum;
	}

	@Override
	public String toString() {
		return "MypageIntroduceDTO [userId=" + userId + ", favoriteActi=" + favoriteActi + ", introduce=" + introduce
				+ ", mtScoreNum=" + mtScoreNum + "]";
	}
	
	
}
	