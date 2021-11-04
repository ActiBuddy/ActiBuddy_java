package com.actibuddy.mypage.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityOptionDTO;
import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dao.MypageDAO;
import com.actibuddy.mypage.model.dto.ActiConditionHisDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.model.dto.CartDTO;
import com.actibuddy.mypage.model.dto.MypageMateScoreDTO;
import com.actibuddy.mypage.model.dto.PayHisDTO;
import com.actibuddy.mypage.model.dto.PayResultDTO;


public class MypageService {
	
	private final MypageDAO mypageDAO;
	
	public MypageService() {
		mypageDAO = new MypageDAO();
	}

	/**
	 * 자기소개 등록용
	 * @param requestIntroduce
	 * @return 헤쥬
	 */
	public int registIntroduce(MemberDTO requestIntroduce) {
		
		SqlSession session = getSqlSession();
	
		int	result = MypageDAO.updateIntroduce(session, requestIntroduce);
		
		System.out.println(result);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int changeUseYn(CartAndMemberAndPayHIsDTO tripList) {

		SqlSession session = getSqlSession();
		
		int result = mypageDAO.changeUseYn(session,tripList);
		
		if(result > 0) {
		
			session.commit();
		} else {
			
			session.rollback();
		}
		 
		session.close();
		
		return result;
	}

	/**
	 * 여행 리스트 조회 
	 * @param userId
	 * @param actiName 
	 * @return 혜주
	 */
	public CartAndMemberAndPayHIsDTO selectCartAndMemberAndPayHIs(Map<String,String> map) {
		
		SqlSession session = getSqlSession();
		
		CartAndMemberAndPayHIsDTO tripList = mypageDAO.selectCartAndMemberAndPayHIs(session,map);
		
		session.close();
		
		
		return tripList;
	}

	/**
	 * 장바구니 등록용 메소드
	 * @author kwonsoonpyo
	 * @param newCart
	 * @return result
	 */
	public int insertCart(CartDTO newCart) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertCart(session, newCart);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
	/**
	 * 카트 목록 조회
	 * @param userId
	 * @return 헤쥬
	 */
	public  List<CartAndMemberAndPayHIsDTO> selectCart(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<CartAndMemberAndPayHIsDTO> tripList = mypageDAO.selectCart(session,userId);
		
		session.close();
		
		return tripList;
	}

	/**
	 * 메이트 리뷰 조회
	 * @param userId
	 * @return 혜쭈
	 */
	public List<MateReviewDTO> selectMtReview(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<MateReviewDTO> selectMtReview = mypageDAO.selectMtReview(session,userId);
		
		session.close();
		
		return selectMtReview;
	}

	public List<ActivityDTO> selectActiInfo(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<ActivityDTO> selectActiInfo = mypageDAO.selectActiInfo(session,userId);
		
		session.close();
		
		return selectActiInfo;
	}

	/**
	 * 액티비티 리뷰 조회
	 * @param userId
	 * @return 헤주
	 */
	public List<ActivityAndReviewDTO> selectActiReview(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<ActivityAndReviewDTO> selectActiReview = mypageDAO.selectActiReview(session,userId);
		
		session.close();
		
		return selectActiReview;
	}

	/**
	 * 회원탈퇴 quitYn -> Y
	 * @param requestUpdate
	 * @return 혜주
	 */
	public int updateQuit(MemberDTO requestUpdate) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.updateQuit(session,requestUpdate);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<MypageMateScoreDTO> selectMateScore(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<MypageMateScoreDTO> selectMateScore = MypageDAO.selectMateScore(session,userId);
		
		session.close();
		
		return selectMateScore;
	}

	public int deleteCart(CartDTO requestCart) {
		
		SqlSession session = getSqlSession();
		
		int result = MypageDAO.deleteCart(session,requestCart);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int registReview(ActiReviewDTO requestReview) {
		
		SqlSession session = getSqlSession();
		
		int result = MypageDAO.insertReview(session,requestReview);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 결제 이력 등록용 메소드
	 * @author kwonsoonpyo
	 * @param payHis
	 * @return result
	 */
	public int insertPayHis(PayHisDTO payHis) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertPayHis(session, payHis);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 결제 후 성공 / 실패 화면에서 보여질 카트 정보를 가져오는 메소드
	 * @author kwonsoonpyo
	 * @param cartNum
	 * @return payResult
	 */
	public PayResultDTO selectPayResult(String cartNum) {
		
		SqlSession session = getSqlSession();
		
		PayResultDTO payResult = mypageDAO.selectPayResult(session, cartNum);
		
		session.close();
		
		return payResult;
	}
	
	/**
	 * 문의사항 가져오기
	 * @param userId
	 * @return해주
	 */
	public List<FaqDTO> selectFaq(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<FaqDTO> selectFaq = mypageDAO.selectFaq(session,userId);
		
		session.close();
		
		return selectFaq;
	}

	/**
	 * 액티비티 등록
	 * @param requestActi
	 * @return 혜주
	 */
	public int registReview(ActivityDTO requestActi) {
		
		SqlSession session = getSqlSession();
		
		int result = MypageDAO.insertActi(session,requestActi);
				
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 최근 등록된 액티비티 번호 조회용 메소드
	 * @author 조혜쭈
	 * @return
	 */
	public ActiConditionHisDTO selectNewActiNum() {
		
		SqlSession session = getSqlSession();
		
		ActiConditionHisDTO newActiNum = mypageDAO.selectNewActiNum(session);
		
		session.close();
		
		return newActiNum;
	}


	public int insertCon(ActiConditionHisDTO requestActiCon) {
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertCon(session,requestActiCon);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;

	}

	public int insertOp(ActivityOptionDTO requestOption) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertOp(session,requestOption);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 메이트 평가 등록용 메소드
	 * @author kwonsoonpyo
	 * @param scoreDTO
	 * @return result
	 */
	public int insertScore(MypageMateScoreDTO scoreDTO) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.insertScore(session, scoreDTO);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<MateFindAndApplyDTO> selectMtApply(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<MateFindAndApplyDTO> selectMtApply = MypageDAO.selectMtApply(session,userId);
		
		return selectMtApply;
	}

	public int updateMtFindNum(MateFindDTO requestMtFindNum) {
		
		SqlSession session = getSqlSession();
		
		int result = mypageDAO.updateMtFindNum(session,requestMtFindNum);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int updatePayYn(String cartNum) {
		
	    SqlSession session = getSqlSession();
	    
	    int result = mypageDAO.updatePayYn(session, cartNum);
	    
	    if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	
	
}
