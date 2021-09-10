package com.cesco.clc.web.front.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cesco.clc.config.web.SimpleMapServiceController;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/front/intro")
public class FrontIntroNoticeController extends SimpleMapServiceController{
	
	private static final Logger logger = LoggerFactory.getLogger(FrontIntroNoticeController.class);

	
	@RequestMapping(value = "/main")
    public String intro(HttpServletRequest req, HttpServletResponse res, ModelMap model) throws Exception {
	    Map<String, Object> pMap = super.getModel(req).getMap();
	    try {
	    	model.addAttribute("pMap", pMap);
	    	
	    } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
	    return "/front/pages/intro/intro";
    }
	
	@RequestMapping(value = "/map")
    public String map(HttpServletRequest req, HttpServletResponse res, ModelMap model) throws Exception {
	    Map<String, Object> pMap = super.getModel(req).getMap();
	    try {
	    	model.addAttribute("pMap", pMap);
	    	
	    } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
	    return "/front/pages/intro/map";
    }
}
