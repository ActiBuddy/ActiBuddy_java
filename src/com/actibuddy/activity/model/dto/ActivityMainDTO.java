package com.actibuddy.activity.model.dto;

import java.util.List;

public class ActivityMainDTO implements java.io.Serializable{

	private List<LocationDTO> locationList;
	private List<ActivityDTO> activityList;
	
	public ActivityMainDTO() {

	}

	public ActivityMainDTO(List<LocationDTO> locationList, List<ActivityDTO> activityList) {
		super();
		this.locationList = locationList;
		this.activityList = activityList;
	}

	public List<LocationDTO> getLocationList() {
		return locationList;
	}

	public void setLocationList(List<LocationDTO> locationList) {
		this.locationList = locationList;
	}

	public List<ActivityDTO> getActivityList() {
		return activityList;
	}

	public void setActivityList(List<ActivityDTO> activityList) {
		this.activityList = activityList;
	}

	@Override
	public String toString() {
		return "ActivityMainDTO [locationList=" + locationList + ", activityList=" + activityList + "]";
	}
}
