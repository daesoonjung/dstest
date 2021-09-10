package com.cesco.clc.util;
  
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
 
public class PageNavigation {
    String parentHtml = "<div class=\"pagination\"><ul>";
    
    String prevParentHtml = "";
    String firstHtml = "<li><button type=\"button\" onclick='script(\"1\");' class=\"btn\"><i class=\"ico-first\"></i></button></li>";
    String prevHtml = "<li><button type='button' onclick='script(\"num\");' class='btn'><i class='ico-chevron-left'></i></button></li>" ;
    String prevEndHtml = "";
    
    String pageParentHtml = "";
    String nowHtml  = "<li><button type='button' class='btn on'>num</button></li>" ;
    String pageHtml = "<li><button type='button' onclick='script(\"num\");' class='btn'>num</button></li>" ;
    String pageEndHtml = "";

    String nextParentHtml = "";
    String nextHtml = "<li><button type='button' onclick='script(\"num\");' class='btn'><i class='ico-chevron-right'></i></button></li>" ;
    String lastHtml = "<li><button type='button' onclick='script(\"num\");' class='btn'><i class='ico-last'></i></button></li>";
    String nextEndHtml = "";
    
    String endHtml = "</ul></div>";
    
    String contentPath = "";
    int perPage = 20;       // 한페이지에 보여줄 게시물 수
    int listPage = 5;      // 페이징부분에 보여줄 한페이지당 최대 페이지 수 (<< < 1 2 3 4 5 6 7 8 9 10 > >>)' 

    int currentPage= 0 ;        //시작 글 번호 
    int startRow= 0 ;       //시작 글 번호 
    int endRow= 0 ;         //시작 글 번호 
    int totalCount = 0;     //
    int totalPage = 0 ;   //전체 페이지 수
    String script = "searchPage";
	
	/**
	 * 
	 * @param req
	 * @param currentPage
	 */
	public PageNavigation(HttpServletRequest req, int currentPage){
		init(req, currentPage);  
	}
	
	
	public PageNavigation(HttpServletRequest req, Object currentPage){
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}
	
	public PageNavigation(HttpServletRequest req, int perPage , int currentPage){
		this.perPage = perPage ;
		init(req, currentPage);  
	}
	
	public PageNavigation(HttpServletRequest req, Object perPage , Object currentPage){
		this.perPage = Integer.parseInt(StringUtil.null2str(perPage, "15"));
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}
	
	public PageNavigation(HttpServletRequest req, Object perPage , Object currentPage, String sPerPage){
		this.perPage = Integer.parseInt(StringUtil.null2str(perPage, sPerPage));
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}	
		
	public PageNavigation(HttpServletRequest req, int perPage , int listPage , int currentPage){
		this.perPage = perPage ;
		this.listPage = listPage ;
		init(req, currentPage);  
	}
	
	public PageNavigation(HttpServletRequest req, int perPage , int listPage , Object currentPage){
		this.perPage = perPage ;
		this.listPage = listPage;
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}
	
	private void init(HttpServletRequest req, int currentPage){
	    this.currentPage = currentPage;
        this.contentPath = req.getContextPath();
        
        startRow =  (currentPage-1)*perPage ;
        endRow = currentPage*perPage ;
        
        firstHtml = firstHtml.replaceAll("#contentPath#", contentPath);
        prevHtml = prevHtml.replaceAll("#contentPath#", contentPath);
        pageHtml = pageHtml.replaceAll("#contentPath#", contentPath);
        nextHtml = nextHtml.replaceAll("#contentPath#", contentPath);
        lastHtml = lastHtml.replaceAll("#contentPath#", contentPath);
	}
	
	//전체 감싼 태그 변경
	public void setParentHtml(String parent, String end){
		this.parentHtml = parent;
		this.endHtml = end;
	}
	
	//현재 페이지 감싼 태그 변경
	public void setParentPageHtml(String parent, String end){
		this.pageParentHtml = parent;
		this.pageEndHtml = end;
	}
	
	//이전버튼 감싼 태그 변경
	public void setParentPrevHtml(String parent, String end, boolean use){
		this.prevParentHtml = parent;
		if(!use){
			this.firstHtml = "";
			this.prevHtml = "";
		}
		this.prevEndHtml = end;
	}
	
	//다음버튼 감싼 태그 변경
	public void setParentNextHtml(String parent, String end, boolean use){
		this.nextParentHtml = parent;
		if(!use){
			this.nextHtml = "";
			this.lastHtml = "";
		}
		this.nextEndHtml = end;
	}

	public String getPageHtml(){
	    if(totalCount == 0) return "";
		
		firstHtml = firstHtml.replaceAll("#contentPath#", contentPath);
		prevHtml = prevHtml.replaceAll("#contentPath#", contentPath);
		pageHtml = pageHtml.replaceAll("#contentPath#", contentPath);
		nextHtml = nextHtml.replaceAll("#contentPath#", contentPath);
		lastHtml = lastHtml.replaceAll("#contentPath#", contentPath);
		
		StringBuffer buffer= new StringBuffer();
 
		int currentFirst = (currentPage - 1) / listPage; // 현재 페이지 에서 첫번째 페이지 번호 구하기
		currentFirst = currentFirst * listPage + 1;
		
		int currentlast = (currentPage - 1) / listPage;	//  현재 페이지 에서 마지막 페이지 번호 구하기
		currentlast = currentlast * listPage + listPage;
			
		int nextFirst = (currentPage - 1)/listPage; // 현재 페이지 에서 다음 블럭 페이지 번호 구하기
		nextFirst = (nextFirst+1) * listPage + 1;
		
		int prevLast = (currentPage - 1)/listPage; // 현재 페이지 에서 이전 블럭 페이지 번호 구하기
		prevLast = (prevLast-1) * listPage + listPage;
		
		int lastPage = 1;											
		lastPage = totalCount / perPage;
		
		if(totalCount%perPage != 0) lastPage = lastPage + 1;
		currentlast = (currentlast > lastPage) ? lastPage : currentlast;
		
		//태그시작	
		buffer.append( parentHtml );
		
		buffer.append( prevParentHtml );
		
		//처음
		if(currentPage > 1) buffer.append( firstHtml.replaceAll("script", script) );
		
		//이전
		if(prevLast > 1)
			buffer.append( prevHtml.replaceAll("num", String.valueOf(prevLast)).replaceAll("script", script) );
		
		buffer.append( prevEndHtml );

		buffer.append( pageParentHtml );
		//페이징
		for (int j=currentFirst; j<currentFirst+listPage && j<=lastPage; j++) {			
			if ( j <= currentlast ) {
				if ( j == currentPage ) {
					buffer.append( nowHtml.replaceAll("num", String.valueOf(j)).replaceAll("script", script) );
				} else {
					buffer.append( pageHtml.replaceAll("num", String.valueOf(j)).replaceAll("script", script) );
				}
			} 
		}
		buffer.append( pageEndHtml );

		buffer.append( nextParentHtml );
		
		//다음		
		if(nextFirst > lastPage) nextFirst = lastPage;		
		if(currentlast < totalPage)
			buffer.append( nextHtml.replaceAll("num", String.valueOf(nextFirst)).replaceAll("script", script) );
		
		//끝
		if(currentPage < lastPage) 
			buffer.append( lastHtml.replaceAll("num", String.valueOf(lastPage)) .replaceAll("script", script));
		
		buffer.append( nextEndHtml );
		
		//태그끝
		buffer.append(endHtml);

		return buffer.toString();
	}
	
	public int getStartRow() {
		return startRow;
	} 

	public int getEndRow() {
		return endRow;
	} 
	
	public int getCurrentPage(){
		return currentPage;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getPerPage(){
		return perPage;
	}
	
	public Map<String, Object> getPagingData(){
		Map<String, Object> tMap = new HashMap<String, Object>();
		tMap.put("pn", getPageHtml());
		tMap.put("total", getTotalCount());
		tMap.put("totalPage", getTotalPage());
		tMap.put("currentPage", getCurrentPage());
		
		return tMap;
	}
	
	public Map<String, Object> getParam(){
		Map<String, Object> tMap = new HashMap<String, Object>();
		tMap.put("cPage", currentPage);
		tMap.put("totalPage", getTotalPage());
		tMap.put("pStartRowNum", getStartRow());
		tMap.put("pEndRowNum", getEndRow());
		tMap.put("perPage", getPerPage());
		
		return tMap;
	}

	public Map<String, Object> getParam(String pg){
		Map<String, Object> tMap = new HashMap<String, Object>();
		tMap.put(pg, currentPage);
		tMap.put("pStartRowNum", getStartRow());
		tMap.put("perPage", getPerPage());
		
		return tMap;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount; 		
		totalPage = totalCount / perPage;
		if ( totalCount%perPage != 0 ) totalPage = totalPage + 1; 
	}	
	
	//게시물의 현재 게시 번호
	public int getListIndex(int index) {
		return totalCount - perPage*(currentPage-1) - index ;
	}
	
	public void setScript(String value) {
		this.script = value; 
	}
	
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
}
