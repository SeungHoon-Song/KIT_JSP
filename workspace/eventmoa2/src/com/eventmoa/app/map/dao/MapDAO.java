package com.eventmoa.app.map.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.map.vo.MapBoardVO;
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

	public List<MapBoardVO> getEventAddresses() {
		List<MapBoardVO> eventPosition = session.selectList("Map.getAddressList");
		return eventPosition;
	}
	
	// 이벤트 게시판의 지역
	public String getEventboardAddress(int board_Num) {
		MapVO eventPosition = session.selectOne("Map.getEventboardAddress", board_Num);
		return eventPosition.toString();
	}
}
