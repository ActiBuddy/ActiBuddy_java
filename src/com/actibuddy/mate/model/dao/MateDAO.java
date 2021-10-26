package com.actibuddy.mate.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.mate.model.dto.MateReviewDTO;

public class MateDAO {

	public int insertReview(SqlSession session, MateReviewDTO requestReview) {
		
		return session.insert("MateDAO.insertReview", requestReview);
	}

}
