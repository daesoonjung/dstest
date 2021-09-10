package com.cesco.clc.web.back.controller;

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
@RequestMapping("/back/solplanner/join")
public class BackSolPlannerJoinMgrController extends SimpleMapServiceController{
	
	private static final Logger logger = LoggerFactory.getLogger(BackSolPlannerJoinMgrController.class);

	
	@RequestMapping(value = "/main")
    public String main(HttpServletRequest req, HttpServletResponse res, ModelMap model) throws Exception {
	    Map<String, Object> pMap = super.getModel(req).getMap();
	    try {
	    	model.addAttribute("pMap", pMap);
	    	
	    } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
	    return "/back/pages/solplanner/list";
    }
	
	
}
