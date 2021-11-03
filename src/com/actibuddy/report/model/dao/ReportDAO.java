package com.actibuddy.report.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

public class ReportDAO {

	public static List<MateReviewDTO> matefindrep(SqlSession session) {
		return session.selectList("ReportDAO.matefindrep");
	}

	public static MateReviewDTO matefindrepdetail(SqlSession session, MateReviewDTO reviewreport) {
		return session.selectOne("ReportDAO.matefindrepdetail",reviewreport);
	}

	public static int rejectreport(SqlSession session, MateReviewDTO mateReviewwran) {
		return session.update("ReportDAO.rejectreport", mateReviewwran);
	}

	public static List<ActiReviewDTO> actireviewrep(SqlSession session) {
		return session.selectList("ReportDAO.actireviewrep");

	}

	public static ActiReviewDTO actireviewrepdetail(SqlSession session, ActiReviewDTO actireviewreport) {
		return session.selectOne("ReportDAO.actireviewrepdetail",actireviewreport);
	}

	public static int rejectreportactireview(SqlSession session, ActiReviewDTO actiReviewwarn) {
		return session.update("ReportDAO.rejectreportactireview", actiReviewwarn);
	}

	
	//=======================  메이트 리뷰 신고 수리 후 경고카운트 증가 ==============================
	public static int mateReviewwran(SqlSession session, MateReviewDTO mateReviewwran) {
		return session.update("ReportDAO.mateReviewwran", mateReviewwran);
	}

	public static int mateReviewwranmember(SqlSession session, MemberDTO mateReviewwranmember) {
		return session.update("ReportDAO.mateReviewwranmember", mateReviewwranmember);
	}
	//=======================  액티비티 리뷰 신고 수리 후 경고카운트 증가 ==============================

	public static int actiReviewwarn(SqlSession session, ActiReviewDTO actiReviewwarn) {
		return session.update("ReportDAO.actiReviewwarn", actiReviewwarn);

	}

	public static int actiReviewwarnmember(SqlSession session, MemberDTO actiReviewwarnmember) {
		return session.update("ReportDAO.actiReviewwarnmember", actiReviewwarnmember);

	}
	//================================ 신고처리 완료된 신고 목록 보기 =========================================

	public static List<MateReviewDTO> rejectedmatefindrepdetail(SqlSession session, MateReviewDTO reviewreport) {
		return session.selectList("ReportDAO.rejectedmatefindrepdetail", reviewreport);
	}

	public static List<ActiReviewDTO> rejectedactireviewrepdetail(SqlSession session, ActiReviewDTO actireviewreport) {
		return session.selectList("ReportDAO.rejectedactireviewrepdetail", actireviewreport);
	}
	
}
