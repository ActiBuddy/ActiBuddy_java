package com.actibuddy.mypage.service;

import static com.actibuddy.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dao.MypageDAO;


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

	
}
