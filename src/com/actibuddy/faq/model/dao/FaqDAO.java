package com.actibuddy.faq.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.faq.model.dto.FaqDTO;

public class FaqDAO {

	public int registFaqCommon(SqlSession session, FaqDTO faq) {
		return session.insert("FaqDAO.registFaqCommon", faq);
	}

}
