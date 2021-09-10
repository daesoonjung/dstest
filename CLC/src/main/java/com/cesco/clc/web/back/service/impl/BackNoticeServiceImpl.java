package com.cesco.clc.web.back.service.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cesco.clc.web.back.dao.BackNoticeDAO;
import com.cesco.clc.web.back.service.BackNoticeService;

@Service("backNoticeService")
public class BackNoticeServiceImpl implements BackNoticeService {
	
	@Autowired
	BackNoticeDAO dao;

	@Override
	public List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception{
		return dao.getNoticeList(map);
	}
	
	@Override
	public int getNoticeListCnt(Map<String, Object> map) throws Exception{
		return dao.getNoticeListCnt(map); 
	}
	
	@Override
	public Map<String, Object> getNoticeOne(Map<String, Object> map) throws Exception{
		return dao.getNoticeOne(map); 
	}
	
	@Override
	public void insertNotice(Map<String, Object> map) throws Exception{
		dao.insertNotice(map);
	}
	
	@Override
	public void updateNotice(Map<String, Object> map) throws Exception{
		dao.updateNotice(map);
	}
	
	@Override
	public void updateNoticeState(Map<String, Object> map) throws Exception{
		dao.updateNoticeState(map);
	}
}
