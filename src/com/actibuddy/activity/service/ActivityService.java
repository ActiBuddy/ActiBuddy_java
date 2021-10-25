package com.actibuddy.activity.service;

import static com.actibuddy.common.config.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dao.ActivityDAO;
import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;

public class ActivityService {
	
	private ActivityDAO activityDAO = new ActivityDAO();

	/**
	 * 지역 및 액티비티 정보 조회용 메소드
	 * @author 김주환
	 * @param resultMap
	 * @return
	 */
	public LocationAndActivityDTO selectLocationInfo(Map<String, String> resultMap) {

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
	public ActivityAndReviewDTO selectActivityInfo(String actiName) {
		
		SqlSession session = getSqlSession();
		
		ActivityAndReviewDTO activity = activityDAO.selectActivityInfo(session,actiName);
		
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



	
}
