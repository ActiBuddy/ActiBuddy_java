package com.actibuddy.report.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.manager.model.dao.ManagerDAO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.report.model.dao.ReportDAO;

public class ReportService {

	public List<MateReviewDTO> matefindrep() {

		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> matefindrep = ReportDAO.matefindrep(session);
		
		session.close();
		
		return matefindrep;
	
	}

}
