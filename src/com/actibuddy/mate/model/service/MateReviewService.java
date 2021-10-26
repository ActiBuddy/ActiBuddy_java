package com.actibuddy.mate.model.service;

import org.apache.ibatis.session.SqlSession;
import static com.actibuddy.common.config.Template.getSqlSession;

import com.actibuddy.mate.model.dao.MateDAO;
import com.actibuddy.mate.model.dto.MateReviewDTO;

public class MateReviewService {

	private MateDAO reviewDAO;

	public MateReviewService() {
		reviewDAO = new MateDAO();
	}

	public int registReview(MateReviewDTO requestReview) {

		SqlSession session = getSqlSession();

		int result = reviewDAO.insertReview(session, requestReview);

		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		session.close();

		return result;
	}


}
