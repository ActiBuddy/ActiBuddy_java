package com.actibuddy.mypage.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dao.MypageDAO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.model.dto.CartDTO;


public class MypageService {
	
	private final MypageDAO mypageDAO;
	
	public MypageService() {
		mypageDAO = new MypageDAO();
	}

	/**
	 * 자기소개 등록용
	 * @param requestIntroduce
	 * @return 헤쥬
	 */
	public int registIntroduce(MemberDTO requestIntroduce) {
		
		SqlSession session = getSqlSession();
	
		int	result = MypageDAO.updateIntroduce(session, requestIntroduce);
		
		System.out.println(result);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int changeUseYn(CartAndMemberAndPayHIsDTO tripList) {

		SqlSession session = getSqlSession();
		
		int result = mypageDAO.changeUseYn(session,tripList);
		
		if(result > 0) {
		
			session.commit();
		} else {
			
			session.rollback();
		}
		 
		session.close();
		
		return result;
	}

	/**
	 * 여행 리스트 조회 
	 * @param userId
	 * @return 혜주
	 */
	public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(String userId) {
		
		SqlSession session = getSqlSession();
		
		CartAndMemberAndPayHIsDTO tripList = mypageDAO.selectCartAndMemberAndPayHIs(session,userId);
		
		session.close();
		
		
		return tripList;
	}

	/**
	 * 장바구니 등록용 메소드
	 * @author kwonsoonpyo
	 * @param newCart
	 * @return result
	 */
	public int insertCart(CartDTO newCart) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertCart(session, newCart);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
	/**
	 * 카트 목록 조회
	 * @param userId
	 * @return 헤쥬
	 */
	public  List<CartAndMemberAndPayHIsDTO> selectCart(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<CartAndMemberAndPayHIsDTO> tripList = mypageDAO.selectCart(session,userId);
		
		session.close();
		
		return tripList;
	}

	/**
	 * 메이트 리뷰 조회
	 * @param userId
	 * @return 혜쭈
	 */
	public List<MateReviewDTO> selectMtReview(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> selectMtReview = mypageDAO.selectMtReview(session,userId);
		
		
		return selectMtReview;
	}




	
}
