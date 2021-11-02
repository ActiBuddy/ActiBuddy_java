package com.actibuddy.faq.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.faq.model.dao.FaqDAO;
import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.manager.model.dao.ManagerDAO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.member.model.dao.MemberDAO;
import com.actibuddy.mypage.model.dao.MypageDAO;

public class FaqService {

	private final FaqDAO faqDAO;
	
	public FaqService() {
		faqDAO = new FaqDAO();
	}
	
	public int registFaqCommon(FaqDTO faq) {
		
		SqlSession session = getSqlSession();
		
		int result = faqDAO.registFaqCommon(session, faq);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int registFaqPartner(FaqDTO faq) {
		SqlSession session = getSqlSession();
		
		int result = faqDAO.registFaqPartner(session, faq);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<FaqDTO> commonFaq() {
		
		SqlSession session = getSqlSession();
		
		List<FaqDTO> faqList = FaqDAO.commonFaq(session);
		
		session.close();
		
		return faqList;
	}

	public List<FaqDTO> partnerFaq() {
		
		SqlSession session = getSqlSession();
		
		List<FaqDTO> faqList = FaqDAO.partnerFaq(session);
		
		session.close();
		
		return faqList;
	}

	public FaqDTO detailFaq(FaqDTO detailList) {
		SqlSession session = getSqlSession();
		
		FaqDTO faqList = FaqDAO.detailFaq(session, detailList);
		
		session.close();
		
		return faqList;
	}

	public int registAnswer(FaqDTO faqList) {
		
		SqlSession session = getSqlSession();
		
		int	result = FaqDAO.updateAnswer(session, faqList);
		
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
