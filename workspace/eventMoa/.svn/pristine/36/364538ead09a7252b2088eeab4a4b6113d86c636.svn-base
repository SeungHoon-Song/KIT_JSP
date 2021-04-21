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
	
	public List<EventBoardVO> searchList(String category, String keyword){
		
		HashMap<String, String> searchMap = new HashMap();
		String col = null;
		if(category.equals("seoul")){
			col = "서울";
		}
		else if(category.equals("busan")) col = "부산";
		else if(category.equals("daegu")) col = "대구";
		else if(category.equals("gwanju")) col = "광주";
		else if(category.equals("incheon"))	col = "인천";
		else if(category.equals("daejeon")) col = "대전";
		else if(category.equals("ulsan")) col = "울산";
		else if(category.equals("gyeonggi")) col = "경기";
		else if(category.equals("gangwon")) col = "강원";
		else if(category.equals("gyeongbuk")) col = "경북";
		else if(category.equals("gyeongnam")) col = "경남";
		else if(category.equals("chungbuk")) col = "충북";
		else if(category.equals("chungnam")) col = "충남";
		else if(category.equals("jeju")) col = "제주";
		else {
			col = "";
		}
			
		searchMap.put("category", col);
		searchMap.put("keyword", keyword);
		return session.selectList("EventBoard.searchList", searchMap);
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
	
	public void updateLikeCount(int board_Num) {
		session.update("EventBoard.updateLikeCount", board_Num);
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
	
	
}

