package com.actibuddy.common.paging;

public class SelectCriteria implements java.io.Serializable {

	private int pageNo;             // 페이지 번호 
	private int totalCount;         // 전체 게시물 수 
	private int limit;		        // 페이지 당 최대 게시물 수
	private int buttonAmount;       // 한 번에 보여줄 페이징 버튼 갯수
	private int maxPage;            // 가장 마지막 페이지
	private int startPage;          // 첫페이지 ex.1 11 21
	private int endPage;            // 마지막페이지 ex.10 20 30
	private int startRow; 	     	// db db의 where절에 설정할 row 시작 번호
	private int endRow;		        // db의 where절에 설정할 row 마지막 번호
	private String searchCondition; // 검색 조건
	private String searchValue;	    // 검색어
	
	public SelectCriteria() {}

	public SelectCriteria(int pageNo, int totalCount, int limit, int buttonAmount, int maxPage, int startPage,
			int endPage, int startRow, int endRow, String searchCondition, String searchValue) {
		super();
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		this.limit = limit;
		this.buttonAmount = buttonAmount;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startRow = startRow;
		this.endRow = endRow;
		this.searchCondition = searchCondition;
		this.searchValue = searchValue;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getButtonAmount() {
		return buttonAmount;
	}

	public void setButtonAmount(int buttonAmount) {
		this.buttonAmount = buttonAmount;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	@Override
	public String toString() {
		return "SelectCriteria [pageNo=" + pageNo + ", totalCount=" + totalCount + ", limit=" + limit
				+ ", buttonAmount=" + buttonAmount + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + ", startRow=" + startRow + ", endRow=" + endRow + ", searchCondition=" + searchCondition
				+ ", searchValue=" + searchValue + "]";
	}

	
	
}