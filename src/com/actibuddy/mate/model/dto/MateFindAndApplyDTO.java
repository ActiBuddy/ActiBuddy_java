package com.actibuddy.mate.model.dto;

import java.util.List;

public class MateFindAndApplyDTO implements java.io.Serializable {
	
	private List<MateFindApplyDTO> applyList;
	private List<MateFindDTO> findList;
	
	public MateFindAndApplyDTO() {
	}

	public MateFindAndApplyDTO(List<MateFindApplyDTO> applyList, List<MateFindDTO> findList) {
		super();
		this.applyList = applyList;
		this.findList = findList;
	}

	public List<MateFindApplyDTO> getApplyList() {
		return applyList;
	}

	public void setApplyList(List<MateFindApplyDTO> applyList) {
		this.applyList = applyList;
	}

	public List<MateFindDTO> getFindList() {
		return findList;
	}

	public void setFindList(List<MateFindDTO> findList) {
		this.findList = findList;
	}

	@Override
	public String toString() {
		return "MateFindAndApplyDTO [applyList=" + applyList + ", findList=" + findList + "]";
	}
	
	
	

}
