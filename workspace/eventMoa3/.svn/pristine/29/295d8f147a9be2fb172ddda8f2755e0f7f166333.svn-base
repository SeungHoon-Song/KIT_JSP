package com.eventmoa.app.eventboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
public class EventDAO {
	private static final int key=3;
	public static int moreCnt= 1;
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;

	public EventDAO() {
		session = sessionf.openSession(true);
	}
	//페이지 별 게시글 목록
	public List<EventBoardVO> getBoardList(int startRow,int endRow){
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		return session.selectList("EventBoard.listAll", pageMap);
	}

	// 페이지 작성
	public boolean insertBoard(EventBoardVO ev) {
		return session.insert("EventBoard.insertEventBoard", ev) == 1;
	}
	
	public int getBoardNum() {
		return session.selectOne("EventBoard.getBoardNum");
	}

}

