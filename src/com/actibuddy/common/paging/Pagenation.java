package com.actibuddy.common.paging;

public class Pagenation {

	/* 검색어가 없는 경우 페이징 처리 */
	public static SelectCriteria getSelectCriteria(int pageNo, int totalCount, int limit, int buttonAmount) {
		
		return getSelectCriteria(pageNo, totalCount, limit, buttonAmount, null, null);
	}
	
	/* 검색어가 존재하는 경우 */
	public static SelectCriteria getSelectCriteria(int pageNo, int totalCount, int limit, int buttonAmount, String searchCondition, String searchValue) {
		
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		maxPage = (int) Math.ceil((double) totalCount / limit); //최대 페이지 올림처리
		
		startPage = (int) (Math.ceil((double) pageNo / buttonAmount) - 1) * buttonAmount + 1; // 해당 범위 시작 번호
	
		endPage = startPage + buttonAmount - 1;	// 해당 범위 끝 번호
		
		// 마지막 범위 끝 번호 맞추기
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		// 마지막 페이지는 0이 될 수 없음(게시글이 없을 경우)
		if(maxPage == 0 && endPage == 0) {
			maxPage = startPage;
			endPage = startPage;
		}
		
		// db에서 조회 시작할 rownum
		startRow = (pageNo - 1) * limit + 1;
		endRow = startRow + limit - 1;
		
		System.out.println("startRow : " + startRow);
		System.out.println("endRow : " + endRow);
		
		SelectCriteria selectCriteria = new SelectCriteria(pageNo, totalCount, limit, buttonAmount, maxPage, startPage, endPage, startRow, endRow, searchCondition, searchValue);
		
		return selectCriteria;
	}
}