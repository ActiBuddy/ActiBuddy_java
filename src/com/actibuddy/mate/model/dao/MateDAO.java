package com.actibuddy.mate.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateReviewDTO;

public class MateDAO {

	public int insertReview(SqlSession session, MateReviewDTO requestReview) {
		
		return session.insert("MateDAO.insertReview", requestReview);
	}

	public static List<MateReviewDTO> selectReviewList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("MateDAO.selectReviewList", selectCriteria);
	}
	
	public int selectReviewTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("MateDAO.selectReviewTotalCount", searchMap);
	}


}
