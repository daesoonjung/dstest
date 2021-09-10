package com.cesco.clc.web.back.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface BackNoticeService {
	public List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception;
	public int getNoticeListCnt(Map<String, Object> map) throws Exception;
	public Map<String, Object> getNoticeOne(Map<String, Object> map) throws Exception;
	public void insertNotice(Map<String, Object> map) throws Exception;
	public void updateNotice(Map<String, Object> map) throws Exception;
	public void updateNoticeState(Map<String, Object> map) throws Exception;
}
