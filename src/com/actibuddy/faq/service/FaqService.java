package com.actibuddy.faq.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.faq.model.dao.FaqDAO;
import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.member.model.dao.MemberDAO;

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

}
