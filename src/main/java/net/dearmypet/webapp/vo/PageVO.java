package net.dearmypet.webapp.vo;

import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageVO {
	
	private int page=1;	private int perPageNum=10;
	
	private int totalCount;
	private int endPage;
	private int startPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum=10;

	private int adminType;
	
	private String searchType;
	private String keyword;
 	
	
	public int getAdminType() {
		return adminType;
	}
	public void setAdminType(int adminType) {
		this.adminType = adminType;
	}
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public PageVO(){
		this.page=1;
		this.adminType=1;
	}
	
	private void calcData() {
		endPage=(int)(Math.ceil(page/(double)displayPageNum)*displayPageNum);
		System.out.println(endPage);
		startPage=(endPage-displayPageNum)+1;
	
		System.out.println("totalCount="+totalCount);
		int tempEndPage = (int)(Math.ceil(totalCount/(double)perPageNum));
		 System.out.println("tempEndPage="+tempEndPage);
	 
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev=startPage==1?false:true;
		next=endPage*perPageNum >= totalCount ? false:true;
	
	
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page-1)*10;
	}
	public void setPage(int page) {
	if(page<=0) {
		this.page=1;
	}
		
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	public int getEndPage() {
		return endPage;
	}
	 
	public int getStartPage() {
		return startPage;
	}
	 
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	
	public String makeSearch(int page) {
		UriComponents uriComponents=
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
			 
				.queryParam("searchType",searchType)
				.queryParam("keyword",encoding(keyword)).build();
		return uriComponents.toUriString();
		
		
		
	
	}
	private String encoding(String keyword) {
		// TODO Auto-generated method stub
		if(keyword==null||keyword.trim().length()==0) {
		return "";
		}
		try {
			return URLEncoder.encode(keyword,"UTF-8");	
		} catch (Exception e) {
			// TODO: handle exception
			return "";
		}
		 
	}






}
