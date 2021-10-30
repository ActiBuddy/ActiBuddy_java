package com.actibuddy.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.model.dto.CartDTO;


public class MypageDAO {


//	public static MemberDTO selectIntroduce(SqlSession session, MemberDTO requestIntroduce) {
//		
//		return session.selectOne("MypageIntroduceDAO.selectIntroduce", requestIntroduce);
//	}

	public static int updateIntroduce(SqlSession session, MemberDTO requestIntroduce) {
		
		return session.update("MypageDAO.updateIntroduce", requestIntroduce);
	}

		public int changeUseYn(SqlSession session, CartAndMemberAndPayHIsDTO tripList) {
		
		return session.update("MypageDAO.changeUseYn");
	}

		public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(SqlSession session, String userId) {
			
			return session.selectOne("MypageDAO.selectTripList",userId);
		}

		public static int insertCart(SqlSession session, CartDTO newCart) {
			
			return session.insert("MypageDAO.insertCart", newCart);
		}
		public List<CartAndMemberAndPayHIsDTO> selectCart(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectCart",userId);
		}

		public List<MateReviewDTO> selectMtReview(SqlSession session, String userId) {
			
			
			return session.selectList("MypageDAO.selectMtReview",userId);
		}


}
