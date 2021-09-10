/*
 * Copyright 2002-2012 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.cesco.clc.config.web;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.cesco.clc.config.datatype.HashMapModel;

/**
 * Common controller class to execute business service methods with map
 * parameters simply
 * 
 * @author Sooyeon Park
 * 
 */
public class SimpleMapServiceController extends AbstractServiceController {
    
	@SuppressWarnings("unchecked")
	protected Object getValue(Object command, Object value) {
		if(command instanceof HashMapModel){
			((HashMapModel) command).setMap((Map<String, Object>) value);
		}
		else {
			command = value;
		}
		return command;
	}

	protected HashMapModel getModel(HttpServletRequest request) {
		HashMapModel model = new HashMapModel();
		Map<String, Object> map = model.getMap();
		map.putAll(getMapFromRequest(request));
		map.putAll(getSessionMap(request));
		return model;
	}
	
	/**
	 * 파라미터맵에 세션값 저장
	 * @param req
	 * @return
	 */
	protected Map<String, String> getSessionMap(HttpServletRequest req){
		Map<String, String> sMap = new HashMap<String, String>();
		HttpSession sess = req.getSession();
		
		Enumeration<?> enumeration = sess.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			String key = enumeration.nextElement().toString();
			sMap.put(key, sess.getAttribute(key).toString());
		}
     /*   // 세션정보 설정
		sMap.put(Definition.SESSION_USER_SEQ, sess.getAttribute(Definition.SESSION_USER_SEQ) == null ? null : (String) sess.getAttribute(Definition.SESSION_USER_SEQ)); // 사용자 고유번호
        sMap.put(Definition.SESSION_USER_ID, sess.getAttribute(Definition.SESSION_USER_ID) == null ? null : (String) sess.getAttribute(Definition.SESSION_USER_ID)); // 사용자 아이디
        sMap.put(Definition.SESSION_USER_NAME, sess.getAttribute(Definition.SESSION_USER_NAME) == null ? null : (String) sess.getAttribute(Definition.SESSION_USER_NAME)); // 사용자 이름
        sMap.put(Definition.SESSION_USER_EMAIL, sess.getAttribute(Definition.SESSION_USER_EMAIL) == null ? null : (String) sess.getAttribute(Definition.SESSION_USER_EMAIL)); // 사용자 이메일
        sMap.put(Definition.SESSION_USER_AUTH, sess.getAttribute(Definition.SESSION_USER_AUTH) == null ? Definition.DEFAULT_USER_AUTH : (String) sess.getAttribute(Definition.SESSION_USER_AUTH)); // 권한
        */
        return sMap;
	}

	/**
	 * Make HashMap Object with parameter names and values from HTTP request.
	 * 
	 * @param request
	 *            current HTTP request
	 */
	protected Map<String, Object> getMapFromRequest(HttpServletRequest request) {
		Map<String, Object> targetMap = new HashMap<String, Object>();
		Enumeration<?> enumeration = request.getParameterNames();
		while (enumeration.hasMoreElements()) {
			String paramName = enumeration.nextElement().toString();
			
			String[] values = request.getParameterValues(paramName);
			
			if (values.length == 1) {
				values[0] = values[0] == null ? "" : values[0];
				targetMap.put(paramName, values[0]);
				/*if(!paramName.equals("data")){
					targetMap.put(paramName, values[0].replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\"", "&quot;").replaceAll("＇", "'"));
				}*/
			} else {
				
				for(int i = 0; i < values.length; i++) {
					if(values[i] == null)
						values[i] = "";
					else{
						/*if(!paramName.equals("data")){
							values[i] = values[i].replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\"", "&quot;").replaceAll("＇", "'");
						}*/
					}
				}
				
				targetMap.put(paramName, values);
				
			}
		}
		return targetMap;
	}
}