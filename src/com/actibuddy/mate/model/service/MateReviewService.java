package com.actibuddy.mate.model.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dao.MateDAO;
import com.actibuddy.mate.model.dto.MateReviewDTO;

public class MateReviewService {

	private MateDAO reviewDAO;

	public MateReviewService() {
		reviewDAO = new MateDAO();
	}

	/**
	 * 메이팅 리뷰를 등록하는 메소드
	 * @author junheekim
	 * @param requestReview
	 * @return result
	 */
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

	/**
	 * 메이팅 리뷰 조회(페이징)
	 * @param SelectCriteria
	 * @return reviewList
	 */
	public List<MateReviewDTO> selectAllReviewList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> reviewList = reviewDAO.selectReviewList(session, selectCriteria);
		
		session.close();
		
		return reviewList;
	}
	
	
	/**
	 * 페이징 처리위한 전체 게시물 '갯수' 조회 메소드
	 * @param searchMap
	 * @return totalCount
	 */
	public int selectReviewTotalCount(Map<String, String> searchMap) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = reviewDAO.selectReviewTotalCount(session, searchMap);
		
		session.close();
		
		return totalCount;
	}



}
