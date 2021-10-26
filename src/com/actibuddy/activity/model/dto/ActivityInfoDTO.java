package com.actibuddy.activity.model.dto;

import java.sql.Date;
import java.util.List;

public class ActivityInfoDTO {
	
	private double avgStar;
	private int count;
	private List<ActivityDTO> activityList;
	private List<ActiReviewDTO> reviewList;
	private List<ActivityConditionDTO> conditionList;
	private List<ActivityTypeDTO> typeList;
	private List<ActivityOptionDTO> optionList;
	private List<LocationDTO> locationList;
	
	public ActivityInfoDTO() {
	}

	public ActivityInfoDTO(double avgStar, int count, List<ActivityDTO> activityList, List<ActiReviewDTO> reviewList,
			List<ActivityConditionDTO> conditionList, List<ActivityTypeDTO> typeList,
			List<ActivityOptionDTO> optionList, List<LocationDTO> locationList) {
		super();
		this.avgStar = avgStar;
		this.count = count;
		this.activityList = activityList;
		this.reviewList = reviewList;
		this.conditionList = conditionList;
		this.typeList = typeList;
		this.optionList = optionList;
		this.locationList = locationList;
	}

	public double getAvgStar() {
		return avgStar;
	}

	public void setAvgStar(double avgStar) {
		this.avgStar = avgStar;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<ActivityDTO> getActivityList() {
		return activityList;
	}

	public void setActivityList(List<ActivityDTO> activityList) {
		this.activityList = activityList;
	}

	public List<ActiReviewDTO> getReviewList() {
		return reviewList;
	}

	public void setReviewList(List<ActiReviewDTO> reviewList) {
		this.reviewList = reviewList;
	}

	public List<ActivityConditionDTO> getConditionList() {
		return conditionList;
	}

	public void setConditionList(List<ActivityConditionDTO> conditionList) {
		this.conditionList = conditionList;
	}

	public List<ActivityTypeDTO> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<ActivityTypeDTO> typeList) {
		this.typeList = typeList;
	}

	public List<ActivityOptionDTO> getOptionList() {
		return optionList;
	}

	public void setOptionList(List<ActivityOptionDTO> optionList) {
		this.optionList = optionList;
	}

	public List<LocationDTO> getLocationList() {
		return locationList;
	}

	public void setLocationList(List<LocationDTO> locationList) {
		this.locationList = locationList;
	}

	@Override
	public String toString() {
		return "ActivityInfoDTO [avgStar=" + avgStar + ", count=" + count + ", activityList=" + activityList
				+ ", reviewList=" + reviewList + ", conditionList=" + conditionList + ", typeList=" + typeList
				+ ", optionList=" + optionList + ", locationList=" + locationList + "]";
	}

	

}
