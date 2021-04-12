package com.eventmoa.app.freeboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class FreeBoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public FreeBoardDAO() {
		session = sessionf.openSession(true);
	}
	
	//페이지 별 게시글 목록
	public List<FreeBoardVO> getBoardList(int startRow, int endRow) {
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return session.selectList("FreeBoard.listAll", pageMap);
	}
	
	//게시글 갯수
	public int getBoardCnt() {
		return session.selectOne("FreeBoard.getBoardCnt");
	}
	
	//게시글 조회수
	public void updateBoardView(int board_Num){
		session.update("FreeBoard.updateBoardView", board_Num);
	}
	
	//게시글 작성
	public boolean insertBoard(FreeBoardVO f_vo) {
		return session.insert("FreeBoard.insertBoard", f_vo) == 1;
	}
	
	//게시글 가져오기
	public FreeBoardVO getDetail(int board_Num) {
		return session.selectOne("FreeBoard.getDetail", board_Num);
	}
	
	//번호 가져오기 (시퀀스)
	public int getBoardNum() {
		return session.selectOne("FreeBoard.getBoardNum");
	}
}
