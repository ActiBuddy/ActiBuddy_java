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
	public ActivityInfoDTO selectActivityInfo(String actiName) {
		
		SqlSession session = getSqlSession();
		
		ActivityInfoDTO activity = activityDAO.selectActivityInfo(session,actiName);
		
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
	 * 가격으로 정렬한 액티비티 정보 조회
	 * @author 김주환
	 * @param priceMap
	 * @return
	 */
	public LocationAndActivityDTO selectActivityByPrice(Map<String, String> priceMap) {

		SqlSession session = getSqlSession();
	
		LocationAndActivityDTO location = activityDAO.selectActivityByPrice(session, priceMap);
		
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

	/** 액티비티 정보 조회용 하지만 정렬을 곁들인
	 * @author kwonsoonpyo
	 * @param actiName
	 * @param sort
	 * @return 액티비티 DTO
	 */
	public ActivityInfoDTO sortActivityInfo(Map<String, String> resultMap) {
		
		SqlSession session = getSqlSession();
		
		ActivityInfoDTO activity = activityDAO.sortActivityInfo(session, resultMap);
		
		session.close();
		
		return activity;
	}

	public int totalActivityCount(String locationName) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.totalActivityCount(session,locationName);
		
		session.close();
		
		return totalCount;
	}

	public int totalActivityCountByMap(Map<String, Object> resultMap) {

		SqlSession session = getSqlSession();
		
		int totalCount = activityDAO.totalActivityCountByMap(session,resultMap);
		
		session.close();
		
		return totalCount;
	}

	
}
