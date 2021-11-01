package com.actibuddy.partnership.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

public class PartnerDAO {

	public int joinPartner(SqlSession session, PartnerDTO partnerDTO) {
		return session.insert("PartnerDAO.joinPartner", partnerDTO);
	}

	public int changetopartner(SqlSession session, MemberDTO partnerStatus) {
		return session.update("PartnerDAO.changeToPartner", partnerStatus);
	}

	public static PartnerDTO partnershipinfo(SqlSession session, PartnerDTO partnerinfo) {
		return session.selectOne("PartnerDAO.partnershipinfo", partnerinfo);

	}

}


