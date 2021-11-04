package com.actibuddy.manager.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.faq.model.dao.FaqDAO;
import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.manager.model.dao.ManagerDAO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.manager.model.dto.ManagerPartDTO;
import com.actibuddy.member.model.dao.MemberDAO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.partnership.model.DTO.PartnerDTO;
import com.actibuddy.partnership.model.dao.PartnerDAO;

public class ManagerService {

	private final ManagerDAO managerDAO;
	
	public ManagerService() {
		managerDAO = new ManagerDAO();
	}

	
	// 회원조회 페이지 처리용 메소드
	public int selectTotalCount(Map<String, String> searchMap) {
		SqlSession session = getSqlSession();
		
		int totalCount = ManagerDAO.selectTotalCount(session, searchMap);
		
		session.close();
		
		return totalCount;
	}
	
	public List<ManagerDTO> selectManagerMember() {
		
		SqlSession session = getSqlSession();
		
		List<ManagerDTO> managerList = ManagerDAO.selectManagerMember(session);
		
		session.close();
		
		return managerList;
	}
	
	public List<ManagerDTO> selectWarnMember() {

		SqlSession session = getSqlSession();
	
		List<ManagerDTO> managerList = ManagerDAO.selectWarnMember(session);
	
		session.close();
	
		return managerList;
	
	}


	public List<ManagerDTO> selectAllMember() {

			SqlSession session = getSqlSession();
			
			List<ManagerDTO> managerList = ManagerDAO.selectAllMember(session);
			
			session.close();
			
			return managerList;
	}


	public List<ManagerDTO> selectPartnerMember() {
		SqlSession session = getSqlSession();
		
		List<ManagerDTO> managerList = ManagerDAO.selectPartnerMember(session);
		
		session.close();
		
		return managerList;
	}
	
	
	public ManagerDTO userinfo(ManagerDTO managerList) {
		
		SqlSession session = getSqlSession();
		
		ManagerDTO userinfo = ManagerDAO.userinfo(session, managerList);
		
		session.close();
		
		return userinfo;
	}
	
	
	// 매니저 정보 불러오기
	
	public ManagerPartDTO managerinfo(ManagerPartDTO managerpart) {
	
		SqlSession session = getSqlSession();
		
		ManagerPartDTO managerinfo = ManagerDAO.managerinfo(session, managerpart);
		
		session.close();
		
		return managerinfo;
	}
	
	// 매니저 파트 변경
	public int managerpartChange(ManagerPartDTO managerpart) {
	
		SqlSession session = getSqlSession();
		
		int result = ManagerDAO.managerpartChange(session, managerpart);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
	
		return result;
	}

	// 매니저 등록 (파트 지정)
	public int registManager(MemberDTO requestMember, ManagerPartDTO managerpart) {
		
		SqlSession session = getSqlSession();
		
		int result2 = ManagerDAO.registManagerId(session, requestMember);
		int result1 = ManagerDAO.registManagerPart(session, managerpart);
		
		if(result1 > 0 && result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result1;
	}


	
	
	}
	
	
