package com.cesco.clc.util;
  
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/*
 * <div class="pagination">
          <button class='pagination-item" type="button">
            <i class="icon-chevron-single-right"></i>
          </button>
          <button class="pagination-item" type="button">
            <i class="icon-chevron-double-right"></i>
          </button>
        </div>
 * */
 
public class FrontPageNavigation {
    //String parentHtml = "<div class=\"pagination\">";
	String parentHtml = "";
    
    String prevParentHtml = "";
    String firstHtml = "<button class='pagination-item' type='button' onclick='func(\"1\");'><i class='icon-chevron-double-left'></i></button>";
    String prevHtml = "<button class='pagination-item' type='button'onclick='func(\"page\");'><i class='icon-chevron-single-left'></i></button>" ;
    String prevEndHtml = "";
    
    String pageParentHtml = "";
    String nowHtml  = "<a class='pagination-item current-page' href='javascript:void(0);'>page</a>";
    String pageHtml = "<a class='pagination-item' href='javascript:void(0);' onclick='func(\"page\");'>page</a>";
    String pageEndHtml = "";

    String nextParentHtml = "";
    String nextHtml = "<button class='pagination-item' type='button'onclick='func(\"page\");'><i class='icon-chevron-single-right'></i></button>" ;
    String lastHtml = "<button class='pagination-item' type='button'onclick='func(\"page\");'><i class='icon-chevron-double-right'></i></button>" ;
    String nextEndHtml = "";
    
    //String endHtml = "</div>";
    String endHtml = "";
	/*
	String parentHtml = "<ul class=\"pagination\">";
    
    String prevParentHtml = "";
    String firstHtml = "<li><a href='javascript:void(0)'onclick='func(\"1\");'><<</a></li>";
    String prevHtml = "<li class=''><a href='javascript:void(0)'onclick='func(\"page\");'><</a></li>" ;
    String prevEndHtml = "";
    
    String pageParentHtml = "";
    String nowHtml  = "<li class='active'><a href='javascript:void(0)'>page</a></li>" ;
    String pageHtml = "<li><a href='javascript:void(0)'onclick='func(\"page\");' >page</a></li>";
    String pageEndHtml = "";

    String nextParentHtml = "";
    String nextHtml = "<li class=''><a href='javascript:void(0)'onclick='func(\"page\");'>></a></li>" ;
    String lastHtml = "<li class=''><a href='javascript:void(0)'onclick='func(\"page\");'>>></a></li>" ;
    String nextEndHtml = "";
    
    String endHtml = "</ul>";
    */
    
    String contentPath = "";
    int perPage = 10;       // 한페이지에 보여줄 게시물 수
    int listPage = 10;      // 페이징부분에 보여줄 한페이지당 최대 페이지 수 (<< < 1 2 3 4 5 6 7 8 9 10 > >>)' 

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
	public FrontPageNavigation(HttpServletRequest req, int currentPage){
		init(req, currentPage);  
	}
	
	
	public FrontPageNavigation(HttpServletRequest req, Object currentPage){
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}
	
	public FrontPageNavigation(HttpServletRequest req, int perPage , int currentPage){
		this.perPage = perPage ;
		init(req, currentPage);  
	}
	
	public FrontPageNavigation(HttpServletRequest req, Object perPage , Object currentPage){
		this.perPage = Integer.parseInt(StringUtil.null2str(perPage, "10"));
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}
	
	public FrontPageNavigation(HttpServletRequest req, Object perPage , Object currentPage, String sPerPage){
		this.perPage = Integer.parseInt(StringUtil.null2str(perPage, sPerPage));
		int currPage = Integer.parseInt(StringUtil.null2str(currentPage, "1"));
		init(req, currPage);  
	}	
		
	public FrontPageNavigation(HttpServletRequest req, int perPage , int listPage , int currentPage){
		this.perPage = perPage ;
		this.listPage = listPage ;
		init(req, currentPage);  
	}
	
	public FrontPageNavigation(HttpServletRequest req, int perPage , int listPage , Object currentPage){
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
		if(currentPage > 1) buffer.append( firstHtml.replaceAll("func", script) );
		
		//이전
		if(prevLast > 1)
			buffer.append( prevHtml.replaceAll("page", String.valueOf(prevLast)).replaceAll("func", script) );
		
		buffer.append( prevEndHtml );

		buffer.append( pageParentHtml );
		//페이징
		for (int j=currentFirst; j<currentFirst+listPage && j<=lastPage; j++) {			
			if ( j <= currentlast ) {
				if ( j == currentPage ) {
					buffer.append( nowHtml.replaceAll("page", String.valueOf(j)).replaceAll("func", script) );
				} else {
					buffer.append( pageHtml.replaceAll("page", String.valueOf(j)).replaceAll("func", script) );
				}
			} 
		}
		buffer.append( pageEndHtml );

		buffer.append( nextParentHtml );
		
		//다음		
		if(nextFirst > lastPage) nextFirst = lastPage;		
		if(currentlast < totalPage)
			buffer.append( nextHtml.replaceAll("page", String.valueOf(nextFirst)).replaceAll("func", script) );
		
		//끝
		if(currentPage < lastPage) 
			buffer.append( lastHtml.replaceAll("page", String.valueOf(lastPage)) .replaceAll("func", script));
		
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
