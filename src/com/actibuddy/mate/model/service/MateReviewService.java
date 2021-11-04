package com.actibuddy.mate.model.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dao.MateDAO;
import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;

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

	/**
	 * 선택한 메이트 리뷰 정보
	 * @param num
	 * @return review
	 */
	public MateReviewDTO selectReviewInfo(String num) {
		
		SqlSession session = getSqlSession();
		
		MateReviewDTO review = reviewDAO.selectReviewInfo(session, num);
		
		session.close();
		
		return review;
	}

	/**
	 * 메이트 리뷰 신고 업데이트
	 * @param review
	 * @return result
	 */
	public int updateRepYn(MateReviewDTO review) {
		
		SqlSession session = getSqlSession();
		int result = MateDAO.updateRepYn(session, review);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 메이트 리뷰 추천 업데이트
	 * @param review
	 * @return result
	 */
	public int updateReviewRec(MateReviewDTO review) {
		
		SqlSession session = getSqlSession();
		
		int result = MateDAO.updateReviewRec(session, review);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 베스트 추천 리뷰 5개 조회 메소드
	 * @return bestReviewList
	 */
	public List<MateReviewDTO> selectBestReview() {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> bestReviewList = MateDAO.selectBestReview(session);
		
		session.close();
		
		return bestReviewList;
	}
	

	/**
	 * 최신순 리뷰 5개 조회 메소드
	 * @return newReviewList
	 */
	public List<MateReviewDTO> selectNewReview() {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> newReviewList = MateDAO.selectNewReview(session);
		
		session.close();
		
		return newReviewList;
	}

	/**
	 * 게시글을 삭제해주는 메소드(상태 변환)
	 * @param review
	 * @return result
	 */
	public int deleteReview(MateReviewDTO review) {
		
		SqlSession session = getSqlSession();
		
		int result = MateDAO.deleteReview(session, review);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 게시글을 수정해주는 메소드
	 * @param requestReview
	 * @return result
	 */
	public int updateReview(MateReviewDTO requestReview) {
		
		SqlSession session = getSqlSession();
		
		int result = MateDAO.updateReview(session, requestReview);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}






}
