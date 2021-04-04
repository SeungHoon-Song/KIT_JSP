package com.eventmoa.app.freeboard;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.mybatis.config.SqlMapConfig;

public class FreeDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public FreeDAO() {
		session = sessionf.openSession(true);
	}
}
