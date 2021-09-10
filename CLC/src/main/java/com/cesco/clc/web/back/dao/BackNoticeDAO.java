package com.cesco.clc.web.back.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("backNoticeDAO")
public class BackNoticeDAO {

	@Autowired
	private SqlSession sqlsession;
	
	public List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception{
	    return sqlsession.selectList("sqlmap.back.notice.getNoticeList", map);
	}
	public int getNoticeListCnt(Map<String, Object> map) throws Exception{
		return sqlsession.selectOne("sqlmap.back.notice.getNoticeListCnt", map);
	}
	public Map<String, Object> getNoticeOne(Map<String, Object> map) throws Exception{
		return sqlsession.selectOne("sqlmap.back.notice.getNoticeOne", map);
	}
	
	public void insertNotice(Map<String, Object> map) throws Exception{
		sqlsession.insert("sqlmap.back.notice.insertNotice", map);
	}
	
	public void updateNotice(Map<String, Object> map) throws Exception{
		sqlsession.update("sqlmap.back.notice.updateNotice", map);
	}
	
	public void updateNoticeState(Map<String, Object> map) throws Exception{
		sqlsession.update("sqlmap.back.notice.updateNoticeState", map);
	}
}
