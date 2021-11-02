package com.actibuddy.member.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.member.model.dto.MemberDTO;

public class MemberDAO {

	
	/* 암호화 처리 된 비밀번호 조회용 메소드(로그인 확인용) */
	public String selectEncryptedPwd(SqlSession session, MemberDTO requestMember) {
		
		return session.selectOne("MemberDAO.selectEncryptedPwd", requestMember);
	}
	
	/* 패스워드 일치 시 회원 정보 조회용 메소드 */
	public MemberDTO selectLoginMember(SqlSession session, MemberDTO requestMember) {
		
		return session.selectOne("MemberDAO.selectLoginMember", requestMember);
	}

	public int insertMember(SqlSession session, MemberDTO requestMember) {

		return session.insert("MemberDAO.insertMember", requestMember);

	}
	
	// 아이디 중복 조회
	public int idcheck(SqlSession session, MemberDTO requestMember) {

		return session.selectOne("MemberDAO.idcheck", requestMember);
	}

	public static List<MemberDTO> selectAllMember(SqlSession session) {
		
		return session.selectList("MemberDAO.selectAllMember");
	}

	public static List<MemberDTO> selectWarnMember(SqlSession session) {
		return session.selectList("MemberDAO.selectWarnMember");
	}

	public int changeToPartner(SqlSession session, MemberDTO partnerStatus) {
		return session.selectOne("MemberDAO.changeToPartner", partnerStatus);

	}

	

	

}
