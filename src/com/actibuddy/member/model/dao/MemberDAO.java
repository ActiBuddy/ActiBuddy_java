package com.actibuddy.member.model.dao;

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
}