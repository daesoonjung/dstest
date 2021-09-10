package com.cesco.clc.config.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UrlPathHelper;

import com.cesco.clc.util.Definition;
import com.cesco.clc.util.StringUtil;

public class AuthInterceptor implements HandlerInterceptor {
	protected static Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);


	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object handler, Exception exceptrion)
			throws Exception {
	}
	
	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView model)
        throws Exception {
        if (model != null)
        {
            Map<String, Object> pMap = (Map<String, Object>)model.getModelMap().get("pMap");
            if (pMap != null)
            {
                UrlPathHelper urlPathHelper = new UrlPathHelper();
                String reqUrl   = urlPathHelper.getOriginatingRequestUri(req);
               
            }
        }
    }

	/* *
	 * Controller 접근 전,
	 * 권한 확인 및 로케일 세팅
	 * */
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {

		// 기본 허용 url 체크
	    UrlPathHelper urlPathHelper = new UrlPathHelper();
        String reqUrl = urlPathHelper.getOriginatingRequestUri(req);
        
        if(reqUrl.contains("/front") == true) {
			return true;
		}
        
        if(reqUrl.contains("/back") == true) {
			return true;
		}

        //String reqPath = urlPathHelper.get
        //허용url확인
		boolean allow = checkAllowAuth(reqUrl);
		//allow = true;
		if (allow == false)
		{
			if(reqUrl.contains("/back") == true) {
				if (backCheckLogin(req) == false)
		        {
			        String isAjax = req.getParameter("isajax");
			        if (isAjax != null && isAjax.equalsIgnoreCase("Y") == true)
			            res.sendError(500);
			        else
		                res.sendRedirect("/back/plogin");
		            return false;
		        }
				//return true;
			}else if(reqUrl.contains("/user") == true) {
				return true;
			}
			
		    return true;
		}
		return true;
	}
	
	private boolean backCheckLogin(HttpServletRequest req) {
	    HttpSession sess = req.getSession(false);
	    if (sess == null)
	        return false;
	    String userId = StringUtil.null2str(sess.getAttribute(Definition.SESSION_MGR_USER_ID));
	    
	    return userId.isEmpty() == true ? false : true;
	}
	
	private boolean checkAllowAuth(String reqUrl) {
        for (String allowUrl : Definition.ALLOW_REQUEST_URLS)
        {
            if (reqUrl.equalsIgnoreCase(allowUrl) == true)
                return true;
        }
               
        return false;
    }	
	

}
