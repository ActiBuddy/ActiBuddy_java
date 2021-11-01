package com.actibuddy.manager.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.manager.model.dto.ManagerDTO;

public class ManagerDAO {

	
	public static int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		return session.selectOne("ManagerDAO.selectTotalCount", searchMap);
	}

	
	public static List<ManagerDTO> selectManagerMember(SqlSession session) {
		return session.selectList("ManagerDAO.selectManagerMember");
	}
	
	// 경고받은 회원
	public static List<ManagerDTO> selectWarnMember(SqlSession session) {
		return session.selectList("ManagerDAO.selectWarnMember");
	}

	public static List<ManagerDTO> selectAllMember(SqlSession session) {
		return session.selectList("ManagerDAO.selectAllMember");
	
	}
	

	public static List<ManagerDTO> selectPartnerMember(SqlSession session) {
		return session.selectList("ManagerDAO.selectPartnerMember");
	}


	public static ManagerDTO userinfo(SqlSession session, ManagerDTO managerList) {
		return session.selectOne("ManagerDAO.userinfo", managerList);
	}
}
