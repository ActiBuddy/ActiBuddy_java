package com.actibuddy.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.model.dto.ActivityOptionDTO;
import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.ActiConditionHisDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.model.dto.CartDTO;
import com.actibuddy.mypage.model.dto.MypageMateScoreDTO;
import com.actibuddy.mypage.model.dto.PayHisDTO;
import com.actibuddy.mypage.model.dto.PayResultDTO;


public class MypageDAO {


//	public static MemberDTO selectIntroduce(SqlSession session, MemberDTO requestIntroduce) {
//		
//		return session.selectOne("MypageIntroduceDAO.selectIntroduce", requestIntroduce);
//	}

	public static int updateIntroduce(SqlSession session, MemberDTO requestIntroduce) {
		
		return session.update("MypageDAO.updateIntroduce", requestIntroduce);
	}

		public int changeUseYn(SqlSession session, CartAndMemberAndPayHIsDTO tripList) {
		
		return session.update("MypageDAO.changeUseYn");
	}

		public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(SqlSession session, Map<String, String> map) {
			
			return session.selectOne("MypageDAO.selectTripList",map);
		}

		public int insertCart(SqlSession session, CartDTO newCart) {
			
			return session.insert("MypageDAO.insertCart", newCart);
		}
		public List<CartAndMemberAndPayHIsDTO> selectCart(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectCart",userId);
		}

		public List<MateReviewDTO> selectMtReview(SqlSession session, String userId) {
			
			
			return session.selectList("MypageDAO.selectMtReview",userId);
		}

		public List<ActivityDTO> selectActiInfo(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectActiInfo",userId);
		}

		public List<ActivityAndReviewDTO> selectActiReview(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectActiReview",userId);
		}

		public int updateQuit(SqlSession session, MemberDTO requestUpdate) {
			
			return session.update("MypageDAO.updateQuit",requestUpdate);
		}

		public static List<MypageMateScoreDTO> selectMateScore(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectMateScore",userId);
		}

		public static int deleteCart(SqlSession session, CartDTO requestCart) {
			
			
			return session.delete("MypageDAO.deleteCart",requestCart);
		}

		public static int insertReview(SqlSession session, ActiReviewDTO requestReview) {
			
			return session.insert("MypageDAO.insertReview",requestReview);
		}

		public int insertPayHis(SqlSession session, PayHisDTO payHis) {
			
			return session.insert("MypageDAO.insertPayHis", payHis);
		}

		public PayResultDTO selectPayResult(SqlSession session, String cartNum) {
			
			return session.selectOne("MypageDAO.selectPayResult", cartNum);
		}
		
		public List<FaqDTO> selectFaq(SqlSession session, String userId) {
			
			return session.selectList("MypageDAO.selectFaq",userId);
		}

		public static int insertActi(SqlSession session, ActivityDTO requestActi) {
			
			return session.insert("MypageDAO.insertActi",requestActi);
		}

		public ActiConditionHisDTO selectNewActiNum(SqlSession session) {
			
			return session.selectOne("MypageDAO.selectNewActiNum");
		}

		public int insertCon(SqlSession session, ActiConditionHisDTO requestActiCon) {
			
			return session.insert("MypageDAO.insertCon",requestActiCon);
		}

		public int insertOp(SqlSession session, ActivityOptionDTO requestOption) {
			
			return session.insert("MypageDAO.insertOp",requestOption);
		}

		public int insertScore(SqlSession session, MypageMateScoreDTO scoreDTO) {
			
			return session.insert("MypageDAO.insertScore", scoreDTO);
		}


}
