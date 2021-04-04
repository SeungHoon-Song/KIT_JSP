package com.eventmoa.app.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.mybatis.config.SqlMapConfig;

public class userDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public userDAO() {
		session = sessionf.openSession(true);
	}
	
	
	
}
