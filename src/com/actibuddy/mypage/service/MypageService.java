package com.actibuddy.mypage.service;

import static com.actibuddy.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.mypage.model.dao.MypageIntroduceDAO;
import com.actibuddy.mypage.model.dto.MypageIntroduceDTO;

public class MypageService {

	public int registIntroduce(MypageIntroduceDTO requestIntroduce) {
		
		SqlSession session = getSqlSession();
		
		int result = MypageIntroduceDAO.insertIntroduce(session, requestIntroduce);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	
}
