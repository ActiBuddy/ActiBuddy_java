package com.actibuddy.report.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.manager.model.dao.ManagerDAO;
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.report.model.dao.ReportDAO;

public class ReportService {

	public List<MateReviewDTO> matefindrep() {

		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> matefindrep = ReportDAO.matefindrep(session);
		
		session.close();
		
		return matefindrep;
	
	}

	public MateReviewDTO matefindrepdetail(MateReviewDTO reviewreport) {

		SqlSession session = getSqlSession();
		
		MateReviewDTO reviewreportinfo = ReportDAO.matefindrepdetail(session, reviewreport);
				
		session.close();
		
		return reviewreportinfo;
	}

	public ActiReviewDTO actireviewrepdetail(ActiReviewDTO actireviewreport) {
		
		SqlSession session = getSqlSession();
		
		ActiReviewDTO actireviewinfo = ReportDAO.actireviewrepdetail(session, actireviewreport);
	
		session.close();
		
		return actireviewinfo;
	}
	
	
	public int rejectreport(MateReviewDTO mateReviewwran) {

		SqlSession session = getSqlSession();
		
		int result = ReportDAO.rejectreport(session, mateReviewwran);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		return result;
	}

	public List<ActiReviewDTO> actireviewrep() {
		
		SqlSession session = getSqlSession();
		
		List<ActiReviewDTO> actireviewrep = ReportDAO.actireviewrep(session);
		
		session.close();
		
		return actireviewrep;
	}

	public int rejectreportactireview(ActiReviewDTO actiReviewwarn) {
		SqlSession session = getSqlSession();
		
		int result = ReportDAO.rejectreportactireview(session, actiReviewwarn);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		return result;
		
	}

//	========================= 신고 처리 메소드 =================================================
	
	public int mateReviewwran(MateReviewDTO mateReviewwran, MemberDTO mateReviewwranmember) {
	
		SqlSession session = getSqlSession();
		
		int result1 = ReportDAO.mateReviewwran(session, mateReviewwran);
		int result2 = ReportDAO.mateReviewwranmember(session, mateReviewwranmember);
	
		if(result1 > 0 && result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		return result1;
		
	}

	public int actiReviewwarn(ActiReviewDTO actiReviewwarn, MemberDTO actiReviewwarnmember) {
		SqlSession session = getSqlSession();
		
		int result1 = ReportDAO.actiReviewwarn(session, actiReviewwarn);
		int result2 = ReportDAO.actiReviewwarnmember(session, actiReviewwarnmember);
	
		if(result1 > 0 && result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		return result1;
	}
//	==========================================================================================
	
//	========================= 신고 처리 되어진 메소드 조회============================================
	public List<MateReviewDTO> rejectedmatefindrepdetail() {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> reviewreportinfo = ReportDAO.rejectedmatefindrepdetail(session);
				
		session.close();
		
		return reviewreportinfo;
	}

	public List<ActiReviewDTO> rejectedactireviewrepdetail() {
		
		SqlSession session = getSqlSession();
		
		List<ActiReviewDTO> reviewreportinfo = ReportDAO.rejectedactireviewrepdetail(session);
				
		session.close();
		
		return reviewreportinfo;
	}

	public List<MateReviewDTO> matereviewrep() {

		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> matereviewrep = ReportDAO.matereviewrep(session);
		
		session.close();
		
		return matereviewrep;
	}


}
