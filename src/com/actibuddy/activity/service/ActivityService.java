package com.actibuddy.activity.service;

import static com.actibuddy.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dao.ActivityDAO;
import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.activity.model.dto.LocationDTO;

public class ActivityService {
	
	private ActivityDAO activityDAO = new ActivityDAO();

	public LocationDTO selectLocationInfo(String locationName) {

		SqlSession session = getSqlSession();
		
		LocationDTO location = activityDAO.selectLocationInfo(session,locationName);

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
	

	
}
