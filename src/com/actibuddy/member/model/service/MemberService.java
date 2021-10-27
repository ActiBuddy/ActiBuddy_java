package com.actibuddy.member.model.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.actibuddy.member.model.dao.MemberDAO;
import com.actibuddy.member.model.dto.MemberDTO;

public class MemberService {

	
	private final MemberDAO memberDAO;
	
	/* 생성자를 이용하여 객체를 생성하여 필드에 값을 넣는다. */
	public MemberService() {
		memberDAO = new MemberDAO();
	}
	
	
	/* 로그인 처리용 메소드 */
	public MemberDTO loginCheck(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		MemberDTO loginMember = null;
		
		String encPwd = memberDAO.selectEncryptedPwd(session, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		/* 로그인 요청한 원문 비밀번호화 저장되어있는 암호화된 비밀번호가 일치하는지 확인한다. */
//		if(passwordEncoder.matches(requestMember.getPwd(), encPwd)) {
		
		if(passwordEncoder.matches(requestMember.getPwd(), encPwd)) {
			/* 비밀번호가 일치하는 경우에만 회원 정보를 조회해온다. */
			loginMember = memberDAO.selectLoginMember(session, requestMember);
		}
		
		session.close();
		
		return loginMember;
		
	}


	public int registMember(MemberDTO requestMember) {
		
		
		SqlSession session = getSqlSession();
		
		int result = memberDAO.insertMember(session, requestMember);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}


	public MemberDTO idcheck(MemberDTO requestMember) {

		SqlSession session = getSqlSession();
		MemberDTO loginMember = null;
		
		String result = memberDAO.idcheck(session, requestMember);
		
		
		if(result != null) {
			loginMember = memberDAO.selectLoginMember(session, requestMember);
		} else {
			loginMember = memberDAO.selectLoginMember(session, requestMember);
		}
		
		session.close();
		
		return loginMember;
	}
}
