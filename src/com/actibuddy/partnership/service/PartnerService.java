package com.actibuddy.partnership.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.partnership.model.dao.PartnerDAO;
import com.actibuddy.manager.model.dao.ManagerDAO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

public class PartnerService {

	private final PartnerDAO partnerDAO;
	
	public PartnerService() {
		partnerDAO = new PartnerDAO();
	}

	public int joinPartner(PartnerDTO partnerDTO, MemberDTO partnerStatus) {
		
		SqlSession session = getSqlSession();
		
		int result1 = partnerDAO.joinPartner(session, partnerDTO);
		
		int result2 = partnerDAO.changetopartner(session, partnerStatus);
//		result1 > 0 && 
		if(result1 > 0 && result2 >0) {
			System.out.println("됐음");
			session.commit();
		} else {
			System.out.println("안됐음");

			session.rollback();
		}
		return result1;
	}

	public PartnerDTO partnershipinfo(PartnerDTO partnerinfo) {
		
		SqlSession session = getSqlSession();
		
		PartnerDTO partnerdetail = PartnerDAO.partnershipinfo(session, partnerinfo);
		
		session.close();
		
		return partnerdetail;
	}
	
}
