package com.koreait.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.vo.BoardVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public BoardDAO() {
		session = sessionf.openSession(true);
	}
	
	//페이지 별 게시글 목록
	public List<BoardVO> getBoardList(int startRow, int endRow){
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return session.selectList("Board.listAll", pageMap);
	}
	
	public int getBoardCnt() {
		return session.selectOne("Board.getBoardCnt");
	}
	
	public void updateReadCount(int boardNum) {
		session.update("Board.updateReadCount", boardNum);
	}
	
	public boolean insertBoard(BoardVO board) {
		return session.insert("Board.insertBoard", board) == 1;
	}
	
	public BoardVO getDetail(int boardNum) {
		return session.selectOne("Board.getDetail", boardNum);
	}
	
	public void updateBoard(BoardVO board) {
		session.update("Board.updateBoard", board);
	}

}
