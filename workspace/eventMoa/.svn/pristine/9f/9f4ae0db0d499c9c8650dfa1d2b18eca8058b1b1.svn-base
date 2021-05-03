package com.eventmoa.app.eventboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.eventboard.vo.EventReplyVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
public class EventDAO {
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
	
	public List<EventBoardVO> searchList(String category, String keyword,int startRow,int endRow){
		
		HashMap<String, Object> searchMap = new HashMap();
		
		searchMap.put("startRow", startRow);
		searchMap.put("endRow", endRow);	
		searchMap.put("category", category);
		searchMap.put("keyword", keyword);
		return session.selectList("EventBoard.listAll", searchMap);
	}

	// 페이지 작성
	public boolean insertBoard(EventBoardVO ev, String user_Id) {
		boolean check = false;
		if(session.update("EventBoard.usePoint", user_Id) == 1) {
			check = session.insert("EventBoard.insertEventBoard", ev) == 1;
		}
		return check;
	}
	/**
	 * 
	 * @param EventBoardVO ev
	 * @param user_Id
	 * @param point
	 * @return boolean
	 */
	public boolean insertBoard(EventBoardVO ev, String user_Id, int point) {
		boolean check = false;
		HashMap<String, Object> map = new HashMap<>();
		map.put("user_Id", user_Id);
		map.put("point", point);
		if(session.update("EventBoard.usePoint", map) == 1) {
			check = session.insert("EventBoard.insertEventBoard", ev) == 1;
		}
		return check;
	}
	
	public int getBoardNum() {
		return session.selectOne("EventBoard.getBoardNum");
	}

	public int getBoardCnt() {
		return session.selectOne("EventBoard.getBoardCnt");
	}
	
	public EventBoardVO getDetail(int board_Num) {
		return session.selectOne("EventBoard.getDetail", board_Num);
	}
	
	public void updateReadCount(int board_Num) {
		session.update("EventBoard.updateReadCount", board_Num);
	}
	
	public void deleteBoard(int board_Num) {
		session.delete("EventBoard.deleteBoard", board_Num);
	}
	// --------------------- 댓글 -----------------------
	
	// 댓글 넣기 
	public boolean insertReply(EventReplyVO er_vo) {
		return session.insert("EventBoard.insertReply", er_vo) == 1;
	}
	
	// 댓글 뽑아오기
	public List<EventReplyVO> getReplyList(int board_Num){
		return session.selectList("EventBoard.getReplyList", board_Num);
	}
	
	//댓글 삭제
	public boolean deleteReply(int reply_Num) {
		return session.delete("EventBoard.deleteReply", reply_Num) == 1;
	}
	
	//댓글 평점
	public float getReplyStar(int board_Num) {
		return session.selectOne("EventBoard.getReplyStar", board_Num);
	}
	
}

