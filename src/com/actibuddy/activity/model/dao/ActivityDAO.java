package com.actibuddy.activity.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.model.dto.ActivityMainDTO;
import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.common.paging.SelectCriteria;

public class ActivityDAO {

	public LocationAndActivityDTO selectLocationInfo(SqlSession session, Map<String, Object> resultMap) {
		
		return session.selectOne("ActivityDAO.selectLocationInfo",resultMap);
	}

	public ActivityInfoDTO selectActivityInfo(SqlSession session, Map<String, String> actiMap) {
		
		return session.selectOne("ActivityDAO.selectActivityInfo", actiMap);
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

	public List<LocationAndActivityDTO> selectAllList(SqlSession session) {

		return session.selectList("ActivityDAO.selectAllList");
	}

	public LocationDTO selectLocationOne(SqlSession session, String locationName) {

		return session.selectOne("ActivityDAO.selectLocationOne", locationName);
	}

	public int updateReviewRec(SqlSession session, ActiReviewDTO review) {
		
		return session.update("ActivityDAO.updateReviewRec", review);
	}

	public int updateRepYn(SqlSession session, ActiReviewDTO review) {
		
		return session.update("ActivityDAO.updateRepYn", review);
	}

	public int selectActiReviewTotalCount(SqlSession session, String actiName) {
		
		return session.selectOne("ActivityDAO.selectActiReviewTotalCount", actiName);
	}

	public List<ActiReviewDTO> selectReviewList(SqlSession session, Map<String, Object> reviewMap) {
		
		return session.selectList("ActivityDAO.selectReviewList", reviewMap);
	}

}
