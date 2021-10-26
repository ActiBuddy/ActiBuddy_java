package com.actibuddy.mypage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.mypage.model.dto.MypageIntroduceDTO;

public class MypageIntroduceDAO {

	public static int insertIntroduce(SqlSession session, MypageIntroduceDTO requestIntroduce) {
		
		return session.insert("MypageIntroduceDAO.insertIntroduce", requestIntroduce);
	}

}
