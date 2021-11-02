package com.actibuddy.mate.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;

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

	public static MateReviewDTO selectReviewInfo(SqlSession session, String num) {
		
		return session.selectOne("MateDAO.selectReviewInfo", num);
	}

	public static int updateRepYn(SqlSession session, MateReviewDTO review) {
		
		return session.update("MateDAO.updateRepYn", review);
	}

	public static int updateReviewRec(SqlSession session, MateReviewDTO review) {
		
		return session.update("MateDAO.updateReviewRec", review);
	}

	public static List<MemberDTO> selectBestReview(SqlSession session) {

		return session.selectList("MateDAO.selectBestReview");
	}

	public static int deleteReview(SqlSession session, MateReviewDTO review) {
		
		return session.update("MateDAO.deleteReview", review);
	}

	public static int updateReview(SqlSession session, MateReviewDTO requestReview) {
		
		return session.update("MateDAO.updateReview", requestReview);
	}


}
