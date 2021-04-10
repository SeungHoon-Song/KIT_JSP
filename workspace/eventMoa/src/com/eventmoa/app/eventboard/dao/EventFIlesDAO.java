package com.eventmoa.app.eventboard.dao;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.mybatis.config.SqlMapConfig;

public class EventFIlesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public EventFIlesDAO() {
		session = sessionf.openSession(true);
	}
	
	
	
	
}
