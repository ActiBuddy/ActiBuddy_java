package com.actibuddy.activity.service;

import static com.actibuddy.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dao.ActivityDAO;
import com.actibuddy.activity.model.dto.LocationDTO;

public class ActivityService {
	
	private ActivityDAO activityDAO = new ActivityDAO();

	public LocationDTO selectLocationInfo(String locationName) {

		SqlSession session = getSqlSession();
		
		LocationDTO location = activityDAO.selectLocationInfo(session,locationName);

		session.close();
		
		return location;
	}

	
}
