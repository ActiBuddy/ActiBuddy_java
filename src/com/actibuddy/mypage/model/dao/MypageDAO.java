package com.actibuddy.mypage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.member.model.dto.MemberDTO;


public class MypageDAO {


//	public static MemberDTO selectIntroduce(SqlSession session, MemberDTO requestIntroduce) {
//		
//		return session.selectOne("MypageIntroduceDAO.selectIntroduce", requestIntroduce);
//	}

	public static int updateIntroduce(SqlSession session, MemberDTO requestIntroduce) {
		
		return session.update("MypageDAO.updateIntroduce", requestIntroduce);
	}

}
