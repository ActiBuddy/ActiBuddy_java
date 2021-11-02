package com.actibuddy.report.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

public class ReportDAO {

	public static List<MateReviewDTO> matefindrep(SqlSession session) {
		return session.selectList("ReportDAO.matefindrep");
	}


}


