package com.actibuddy.activity.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.actibuddy.activity.model.dto.LocationDTO;

public class ActivityDAO {

	public LocationDTO selectLocationInfo(SqlSession session, String locationName) {
		
		return session.selectOne("LocationDTO.selectLocationInfo",locationName);
	}

}
