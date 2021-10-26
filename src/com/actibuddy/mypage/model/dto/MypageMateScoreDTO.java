package com.actibuddy.mypage.model.dto;

import java.util.Date;

public class MypageMateScoreDTO {
	
	private String scoreNum;
	private String scoreTitle;
	private String scoreCon;
	private Character scoreRepYn;
	private String scoreStar;
	private String userId;
	private String scoreId;
	
	
	public MypageMateScoreDTO() {
	}


	public MypageMateScoreDTO(String scoreNum, String scoreTitle, String scoreCon, Character scoreRepYn,
			String scoreStar, String userId, String scoreId) {
		super();
		this.scoreNum = scoreNum;
		this.scoreTitle = scoreTitle;
		this.scoreCon = scoreCon;
		this.scoreRepYn = scoreRepYn;
		this.scoreStar = scoreStar;
		this.userId = userId;
		this.scoreId = scoreId;
	}


	public String getScoreNum() {
		return scoreNum;
	}


	public void setScoreNum(String scoreNum) {
		this.scoreNum = scoreNum;
	}


	public String getScoreTitle() {
		return scoreTitle;
	}


	public void setScoreTitle(String scoreTitle) {
		this.scoreTitle = scoreTitle;
	}


	public String getScoreCon() {
		return scoreCon;
	}


	public void setScoreCon(String scoreCon) {
		this.scoreCon = scoreCon;
	}


	public Character getScoreRepYn() {
		return scoreRepYn;
	}


	public void setScoreRepYn(Character scoreRepYn) {
		this.scoreRepYn = scoreRepYn;
	}


	public String getScoreStar() {
		return scoreStar;
	}


	public void setScoreStar(String scoreStar) {
		this.scoreStar = scoreStar;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getScoreId() {
		return scoreId;
	}


	public void setScoreId(String scoreId) {
		this.scoreId = scoreId;
	}


	@Override
	public String toString() {
		return "MypageMateScoreDTO [scoreNum=" + scoreNum + ", scoreTitle=" + scoreTitle + ", scoreCon=" + scoreCon
				+ ", scoreRepYn=" + scoreRepYn + ", scoreStar=" + scoreStar + ", userId=" + userId + ", scoreId="
				+ scoreId + "]";
	}
	


}
