package com.actibuddy.mate.model.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dao.MateDAO;
import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;

public class MateFindService {

	private MateDAO findDAO;
	
	public MateFindService() {
		findDAO = new MateDAO();
	}

	/**
	 * 메이트 구인글을 등록하는 메소드
	 * @author kimjunhee
	 * @param requestFind
	 * @return result
	 */
	public int registFind(MateFindDTO requestFind) {
		
		SqlSession session = getSqlSession();
		
		int result = findDAO.insertFind(session, requestFind);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		session.close();
		
		return result;
	}

	/**
	 * 페이징을 위한 전체 게시글 수 조회 메소드
	 * @author kimjunhee
	 * @param searchMap
	 * @return totalCount
	 */
	public int selectFindTotalCount(Map<String, String> searchMap) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = findDAO.selectFindTotalCount(session, searchMap);

		session.close();
		
		return totalCount;
	}

	/**
	 * 메이트 게시글 조회(페이징)
	 * @author kimjunhee
	 * @param selectCriteria
	 * @return findList
	 */
	public List<MateFindDTO> selectAllFindList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		
		List<MateFindDTO> findList = findDAO.selectAllFindList(session, selectCriteria);

		session.close();
		
		return findList;
	}

	/**
	 * 특정 사용자의 메이트 신청 이력을 조회해주는 메소드
	 * @author kwonsoonpyo
	 * @param userId
	 * @return mtApply
	 */
	public MateFindAndApplyDTO selectMtApplyHis(String userId) {
		
		SqlSession session = getSqlSession();
		
		MateFindAndApplyDTO mtApply = findDAO.selectMtApplyHis(session, userId);
		
		session.close();
		
		return mtApply;
	}
	

	/**
	 * 선택한 메이트 게시글 정보
	 * @author kimjunhee
	 * @param num
	 * @return find
	 */
	public MateFindDTO selectFindInfo(String num) {

		SqlSession session = getSqlSession();
		
		MateFindDTO find = findDAO.selectFindInfo(session, num);
		
		session.close();
		
		return find;
	}

	/**
	 * 마감임박 메이트 게시글 조회
	 * @author kimjunhee
	 * @return hurryFindList
	 */
	public List<MateFindDTO> selectHurryFind() {
		
		SqlSession session = getSqlSession();
		
		List<MateFindDTO> hurryFindList = findDAO.selectHurryFind(session);
		
		session.close();
		
		return hurryFindList;
	}

	/**
	 * 해당 게시글에 대한 댓글 등록 메소드
	 * @author 김주환
	 * @param map
	 * @return result
	 */
	public int insertComment(Map<String, String> map) {

		SqlSession session = getSqlSession();
		
		int result = findDAO.insertComment(session, map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

		/**
	 * 해당 게시글에 대한 댓글 조회 메소드
	 * @author 김주환
	 * @param num
	 * @return comment
	 */
	public List<MateCommentDTO> selectComment(String num) {
		
		SqlSession session = getSqlSession();
		
		List<MateCommentDTO> comment = MateDAO.selectComment(session, num);
		
		session.close();
		
		return comment;
	}

	/**
	 * 메이팅 게시글 신고 메소드
	 * @author 김주환
	 * @param find
	 * @return
	 */
	public int updateRepYn(MateFindDTO find) {

		SqlSession session = getSqlSession();
		
		int result = MateDAO.updateFindYn(session, find);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 메이팅 댓글 신고 메소드
	 * @author 김주환
	 * @param comment
	 * @return result
	 */
	public int updateComReqYn(MateCommentDTO comment) {

		SqlSession session = getSqlSession();
		
		int result = MateDAO.updateComReqYn(session, comment);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 메이트 신청 메소드
	 * @author 김주환
	 * @param find
	 * @return result
	 */
	public int insertApply(MateFindApplyDTO find) {

		SqlSession session = getSqlSession();
		
		int result = MateDAO.insertApply(session, find);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 메이트 게시글 조회수 업데이트 메소드
	 * @author 김주환
	 * @param num
	 * @return result
	 */
	public int updateViews(String num) {
		
		SqlSession session = getSqlSession();
		
		int result = MateDAO.updateViews(session, num);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
}
