package com.eventmoa.app.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.user.vo.UserVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class PointDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public PointDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean charge(UserVO user) {
		return session.update("PointBoard.charge", user) == 1;
	}
}
