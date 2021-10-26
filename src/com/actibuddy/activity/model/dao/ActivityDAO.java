package com.actibuddy.activity.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;

public class ActivityDAO {

	public LocationAndActivityDTO selectLocationInfo(SqlSession session, String locationName) {
		
		return session.selectOne("ActivityDAO.selectLocationInfo",locationName);
	}

	public ActivityInfoDTO selectActivityInfo(SqlSession session, String actiName) {
		
		return session.selectOne("ActivityDAO.selectActivityInfo", actiName);
	}

	public List<LocationDTO> selectLocation(SqlSession session) {

		
		return session.selectList("ActivityDAO.selectLocation");
	}

	public LocationAndActivityDTO selectActivityByPrice(SqlSession session, Map<String, String> priceMap) {
		
		return session.selectOne("ActivityDAO.selectActivityByPrice", priceMap);
	}

	public List<ActivityDTO> selectRecommendActivity(SqlSession session, String actiName) {
		
		return session.selectList("ActivityDAO.selectRecommendActivity", actiName);
	}

}
