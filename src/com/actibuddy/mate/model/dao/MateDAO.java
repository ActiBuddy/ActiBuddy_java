package com.actibuddy.mate.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;

public class MateDAO {

	/* 메이트 리뷰 */
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

	public static List<MateReviewDTO> selectBestReview(SqlSession session) {

		return session.selectList("MateDAO.selectBestReview");
	}
	
	public static List<MateReviewDTO> selectNewReview(SqlSession session) {
		
		return session.selectList("MateDAO.selectNewReview");
	}

	public static int deleteReview(SqlSession session, MateReviewDTO review) {
		
		return session.update("MateDAO.deleteReview", review);
	}

	public static int updateReview(SqlSession session, MateReviewDTO requestReview) {
		
		return session.update("MateDAO.updateReview", requestReview);
	}

	/* 메이트 구인 */
	
	public int insertFind(SqlSession session, MateFindDTO requestFind) {

		return session.insert("MateDAO.insertFind", requestFind);
	}

	public int selectFindTotalCount(SqlSession session, Map<String, String> searchMap) {

		return session.selectOne("MateDAO.selectFindTotalCount", searchMap);
	}

	public List<MateFindDTO> selectAllFindList(SqlSession session, SelectCriteria selectCriteria) {

		return session.selectList("MateDAO.selectAllFindList", selectCriteria);
	}

	public List <MateFindDTO> selectMtApplyHis(SqlSession session, String userId) {
		
		return session.selectList("MateDAO.selectMtApplyHis", userId);
	}
	
	public MateFindDTO selectFindInfo(SqlSession session, String num) {
		
		return session.selectOne("MateDAO.selectFindInfo", num);
	}

	public List<MateFindDTO> selectHurryFind(SqlSession session) {
		
		return session.selectList("selectHurryFind");
	}

	public int insertComment(SqlSession session, Map<String, String> map) {

		return session.insert("MateDAO.insertComment", map);
	}

	public static List<MateCommentDTO> selectComment(SqlSession session, String num) {

		return session.selectList("MateDAO.selectComment", num);
	}

	public static int updateFindYn(SqlSession session, MateFindDTO find) {

		return session.update("MateDAO.updateFindYn", find);
	}

	public static int updateComReqYn(SqlSession session, MateCommentDTO comment) {

		return session.update("MateDAO.updateComReqYn", comment);
	}

	public static int insertApply(SqlSession session, MateFindApplyDTO find) {

		return session.insert("MateDAO.insertApply", find);
	}

	public static int updateViews(SqlSession session, String num) {

		return session.update("MateDAO.updateViews", num);
	}

}
