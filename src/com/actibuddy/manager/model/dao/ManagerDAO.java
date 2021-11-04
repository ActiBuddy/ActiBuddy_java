package com.actibuddy.manager.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.manager.model.dto.ManagerPartDTO;
import com.actibuddy.member.model.dto.MemberDTO;

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

	// 매니저 정보 조회
	public static ManagerPartDTO managerinfo(SqlSession session, ManagerPartDTO managerpart) {
		return session.selectOne("ManagerDAO.managerinfo", managerpart);
	}


	public static int managerpartChange(SqlSession session, ManagerPartDTO managerpart) {
		return session.update("ManagerDAO.managerpartChange", managerpart);
	}

// ====================== 매니저 생성 파트====================
	
	// 파트 등록
	public static int registManagerPart(SqlSession session, ManagerPartDTO managerpart) {
		return session.insert("ManagerDAO.registManagerPart", managerpart);
	}

	// 아이디 생성
	public static int registManagerId(SqlSession session, MemberDTO requestMember) {
		return session.insert("ManagerDAO.registManagerId", requestMember);
	}


}

