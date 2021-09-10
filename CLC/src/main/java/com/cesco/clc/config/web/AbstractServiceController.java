package com.cesco.clc.config.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.cesco.clc.util.StringUtil;

/**
 * Abstract Common controller class to execute business service methods simply
 * 
 * 
 */
public abstract class AbstractServiceController extends MultiActionController implements MessageSourceAware {
	public static final String PARAM_COMMAND_NAME = "commandName";
	public static final String PARAM_COMMAND_CLASS = "commandClass";
	public static final String PARAM_TILES = "tiles";

	public static final String ATTR_TILES_MAP = "tilesAttrMap";
	public static final String ATTR_SEARCH = "search";
	
	public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd";
	public static final String LOGIN_FRONTVIEW = "/front/login/login";
	public static final String LOGIN_BACKVIEW = "/back/login/login";

	private MessageSource messageSource;

	public MessageSource getMessageSource() {
		return messageSource;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	protected abstract Object getValue(Object command, Object result);

	protected void setTilesAttributes(HttpServletRequest request, String inputpage) {
		String tiles = "";
		if (inputpage != null)
			tiles = inputpage;
		else
			tiles = request.getParameter(PARAM_TILES);
		Map<String, String> tilesAttrMap = new HashMap<String, String>();

		if (StringUtil.isNotEmpty(tiles)) {
			List<String> inputPageList = StringUtil.getTokens(tiles, ";");
			Iterator<String> inputPageListItr = inputPageList.iterator();
			while (inputPageListItr.hasNext()) {
				List<String> value = StringUtil.getTokens(inputPageListItr.next().toString(), ":");
				tilesAttrMap.put(value.get(0), value.get(1));
			}
		}

		request.setAttribute(ATTR_TILES_MAP, tilesAttrMap);
	}

	

	protected void setCommandAttributes(HttpServletRequest request) throws ClassNotFoundException {
		if (StringUtil.isNotEmpty(request.getParameter(PARAM_COMMAND_NAME))) {
			Class<?> argClass = Class.forName(request.getParameter(PARAM_COMMAND_CLASS));
			Object command = BeanUtils.instantiateClass(argClass);
			request.setAttribute(request.getParameter(PARAM_COMMAND_NAME), command);
		}
	}

	/**
	 * Support binding of Date type.
	 */
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		DateFormat df = new SimpleDateFormat(DEFAULT_DATE_FORMAT);
		CustomDateEditor dateEdit = new CustomDateEditor(df, true);
		binder.registerCustomEditor(Date.class, dateEdit);
	}
}
