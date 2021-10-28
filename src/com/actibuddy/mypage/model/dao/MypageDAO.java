package com.actibuddy.mypage.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;


public class MypageDAO {


//	public static MemberDTO selectIntroduce(SqlSession session, MemberDTO requestIntroduce) {
//		
//		return session.selectOne("MypageIntroduceDAO.selectIntroduce", requestIntroduce);
//	}

	public static int updateIntroduce(SqlSession session, MemberDTO requestIntroduce) {
		
		return session.update("MypageDAO.updateIntroduce", requestIntroduce);
	}

		public int changeUseYn(SqlSession session, Map<String, String> resultMap) {
		
		return session.update("MypageDAO.changeUseYn");
	}

		public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(SqlSession session, String userId) {
			
			return session.selectOne("MypageDAO.selectTripList",userId);
		}

}
