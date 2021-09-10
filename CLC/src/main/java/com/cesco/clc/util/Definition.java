package com.cesco.clc.util;

public class Definition {
    
	//관리자 session
    public final static String SESSION_MGR_USER_ID   = "sMgrUserId";
    public final static String SESSION_MGR_USER_NAME = "sMgrUserNm";
    
    // error_code
    public final static String RESULT_SUCCESS  = "SUCC";
    public final static String RESULT_OK  = "ok";
    public final static String RESULT_FAIL     = "FAIL";
    public final static int    ERROR_SUCCESS   =  0;
    public final static int    ERROR_EXCEPTION = -1;
    
    // paging
    public final static String KEY_CURRENT_PAGE     = "cPage";
    public final static String KEY_PER_PAGE         = "perPage";
    public final static String CURRENT_PAGE_DEFAULT = "1";
    public final static String PER_PAGE_DEFAULT     = "20";
    
    // intercepter 예외 url
    public final static String [] ALLOW_REQUEST_URLS = {
    	"/back/login",
        "/back/dologin"
    };
}
