package com.actibuddy.faq.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.faq.model.dto.FaqDTO;

public class FaqDAO {

	public int registFaqCommon(SqlSession session, FaqDTO faq) {
		return session.insert("FaqDAO.registFaqCommon", faq);
	}

	public int registFaqPartner(SqlSession session, FaqDTO faq) {
		return session.insert("FaqDAO.registFaqPartner", faq);
	}

	public static List<FaqDTO> commonFaq(SqlSession session) {
		return session.selectList("FaqDAO.commonFaq");
	}

	public static List<FaqDTO> partnerFaq(SqlSession session) {
		return session.selectList("FaqDAO.partnerFaq");
	}

	public static FaqDTO detailFaq(SqlSession session, FaqDTO detailList) {
		return session.selectOne("FaqDAO.detailFaq", detailList);
	}

	public static int updateAnswer(SqlSession session, FaqDTO faqList) {
		return session.update("FaqDAO.updateAnswer", faqList);
	}

}
