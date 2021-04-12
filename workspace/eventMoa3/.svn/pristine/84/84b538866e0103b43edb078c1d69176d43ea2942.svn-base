package com.eventmoa.app.map.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.map.vo.MapVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class MapDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MapDAO() {
		session = sessionf.openSession(true);
	}
	
	public String getUserAddress(String user_id) {
		MapVO userPosition = session.selectOne("Map.getAddress", user_id);
		return userPosition.toString();
	}
}
