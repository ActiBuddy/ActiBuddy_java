package com.actibuddy.activity.service;

import static com.actibuddy.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dao.ActivityDAO;
import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.model.dto.ActivityMainDTO;
import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.model.dto.PaymentDTO;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mypage.model.dao.MypageDAO;

public class ActivityService {
	
	private ActivityDAO activityDAO = new ActivityDAO();

	/**
	 * 지역 및 액티비티 정보 조회용 메소드
	 * @author 김주환
	 * @param resultMap
	 * @return
	 */
	public LocationAndActivityDTO selectLocationInfo(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
		
		LocationAndActivityDTO location = activityDAO.selectLocationInfo(session,resultMap);

		session.close();
		
		return location;
	}

	/**
	 * @author kwonsoonpyo
	 * 액티비티 정보 조회용 메소드
	 * @param actiName
	 * @return 액티비티 DTO
	 */
	public ActivityInfoDTO selectActivityInfo(Map<String, String> actiMap) {
		
		SqlSession session = getSqlSession();
		
		ActivityInfoDTO activity = activityDAO.selectActivityInfo(session,actiMap);
		
		session.close();
		
		return activity;
	}

	/**
	 * 메인페이지 지역정보 조회용 메소드
	 * @author 김주환
	 * @return
	 */
	public List<LocationDTO> selectLocation() {
		
		SqlSession session = getSqlSession();
		
		List<LocationDTO> locationList = activityDAO.selectLocation(session);
		
		session.close();
		
		return locationList;
	}

	/**
	 * 해당 지역에 대한 액티비티 정보 조회
	 * @author 김주환
	 * @param resultMap
	 * @return
	 */
	public LocationAndActivityDTO selectActivity(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
	
		LocationAndActivityDTO location = activityDAO.selectActivity(session, resultMap);
		
		session.close();
		
		return location;
	}

	/**
	 * 액티비티 인포 화면 하단에 표시되는 추천 액티비티 조회용 메소드
	 * @param actiName
	 * @return 선택한 액티비티와 같은 지역에 있는 액티비티 리스트
	 */
	public List<ActivityDTO> selectRecommendActivity(String actiName) {
		
		SqlSession session = getSqlSession();
		
		List<ActivityDTO> recActivity = activityDAO.selectRecommendActivity(session, actiName);
		
		session.close();
		
		return recActivity;
	}

	/**
	 * 액티비티 메인 페이지에서 표시해줄 내용을 가져오는 메소드
	 * @author 김주환
	 * @return
	 */
	public List<LocationAndActivityDTO> selectAllList() {

		SqlSession session = getSqlSession();
		
		List<LocationAndActivityDTO> locationList = activityDAO.selectAllList(session);
		
		session.close();
		
		return locationList;
	}

	/**
	 * 넘겨받은 지역 이름에 대한 지역 정보 출력용 메소드
	 * @author 김주환
	 * @param locationName
	 * @return
	 */
	public LocationDTO selectLocationOne(String locationName) {

		SqlSession session = getSqlSession();
		
		LocationDTO location = activityDAO.selectLocationOne(session,locationName);
		
		session.close();
		
		return location;
	}

	/**
	 * 액티비티 후기 추천수 업데이트 메소드
	 * @author kwonsoonpyo
	 * @param review
	 * @return result
	 */
	public int updateReviewRec(ActiReviewDTO review) {
		
		SqlSession session = getSqlSession();
		
        int result = activityDAO.updateReviewRec(session, review);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 액티비티 후기 신고 여부 업데이트 메소드
	 * @author kwonsoonpyo
	 * @param review
	 * @return result
	 */
	public int updateRepYn(ActiReviewDTO review) {
		
		SqlSession session = getSqlSession();
		
		int result = activityDAO.updateRepYn(session, review);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 액티비티 인포 페이지의 후기 갯수 조회용 메소드
	 * @author kwonsoonpyo
	 * @param actiName
	 * @return totalCount
	 */
	public int selectActiReviewTotalCount(String actiName) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.selectActiReviewTotalCount(session, actiName);
		
		session.close();
		
		return totalCount;
	}

	/**
	 * 액티비티 인포 페이지에서 조회용 메소드 (페이지네이션) 하지만 이제 정렬도 곁들인.
	 * @author kwonsoonpyo
	 * @param selectCriteria
	 * @return ReviewList
	 */
	public List<ActiReviewDTO> selectReviewList(Map<String, Object> reviewMap) {
		
		SqlSession session = getSqlSession();
		
		List<ActiReviewDTO> reviewList = activityDAO.selectReviewList(session, reviewMap);
		
		session.close();
		
		return reviewList;
	}

	/**
	 * 액티비티 조회 페이지 페이징 처리를 위한 메소드
	 * @author 김주환
	 * @param locationName
	 * @return
	 */
	public int totalActivityCount(String locationName) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.totalActivityCount(session,locationName);
		
		session.close();
		
		return totalCount;
	}

	/**
	 * 액티비티 조회 페이지 페이징 처리를 위한 메소드
	 * @author 김주환
	 * @param locationName
	 * @return
	 */
	public int totalActivityCountByMap(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.totalActivityCountByMap(session,resultMap);
		
		session.close();
		
		return totalCount;
	}

	/**
	 * 검색어를 포함한 액티비티 총 갯수 검색 메소드
	 * @author 김주환
	 * @param resultMap
	 * @return
	 */
	public int totalCountBySearch(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.totalCountBySearch(session, resultMap);
		
		session.close();
		
		return totalCount;
	}

	/**
	 * 검색어를 포함한 액티비티 검색 메소드 
	 * @author 김주환
	 * @param resultMap
	 * @return
	 */
	public List<ActivityDTO> searchActivity(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
		
		List<ActivityDTO> actiList = activityDAO.searchActivity(session, resultMap);
		
		session.close();
		
		return actiList;
	}

	public List<ActivityDTO> selectActiName(String locationName) {

		SqlSession session = getSqlSession();
		
		List<ActivityDTO> list = activityDAO.selectActiName(session, locationName);
		
		session.close();
		
		return list;
	}

	public LocationAndActivityDTO selectRandomList(String locationName) {

		SqlSession session = getSqlSession();
		
		LocationAndActivityDTO list = activityDAO.selectRandomList(session, locationName);
		
		session.close();
		
		return list;
	}

	/**
	 * 액티비티 조회수 증가용 메소드
	 * @author 김주환
	 * @param actiName
	 * @return
	 */
	public int updateViews(String actiName) {

		SqlSession session = getSqlSession();
		
		int result = activityDAO.updateViews(session, actiName);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 결제 테이블에 고유 번호와 결제 시간을 등록해주는 메소드
	 * @author kwonsoonpyo
	 * @return result
	 */
	public int insertPayment() {
		
		SqlSession session = getSqlSession();
		
		int result= activityDAO.insertPayment(session);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/**
	 * 최근 결제 내역을 조회하는 메소드
	 * @author kwonsoonpyo
	 * @return PaymentDTO
	 */
	public PaymentDTO selectPayment() {
		
		SqlSession session = getSqlSession();
		
		PaymentDTO payment = activityDAO.selectPayment(session);
		
		session.close();
		
		return payment;
	}

}
