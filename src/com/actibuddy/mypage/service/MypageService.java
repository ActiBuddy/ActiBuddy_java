package com.actibuddy.mypage.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dao.MypageDAO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;


public class MypageService {
	
	private final MypageDAO mypageDAO;
	
	public MypageService() {
		mypageDAO = new MypageDAO();
	}

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

	public int changeUseYn(Map<String, String> resultMap) {

		SqlSession session = getSqlSession();
		
		int result = mypageDAO.changeUseYn(session,resultMap);
		
		if(result > 0) {
		
			session.commit();
		} else {
			
			session.rollback();
		}
		 
		session.close();
		
		return result;
	}

	public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(String userId) {
		
		SqlSession session = getSqlSession();
		
		CartAndMemberAndPayHIsDTO tripList = mypageDAO.selectCartAndMemberAndPayHIs(session,userId);
		
		session.close();
		
		
		return tripList;
	}


	
}
