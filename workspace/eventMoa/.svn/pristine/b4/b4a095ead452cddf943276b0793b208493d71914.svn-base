package com.eventmoa.app.freeboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.eventmoa.app.freeboard.vo.FreeReplyVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class FreeBoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public FreeBoardDAO() {
		session = sessionf.openSession(true);
	}
	
	//페이지 별 게시글 목록
	   public List<FreeBoardVO> getBoardList(int startRow, int endRow, String category) {
	      HashMap<String, Object> pageMap = new HashMap<>();
	      
	      pageMap.put("category", category);
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
	
	//게시글 수정
	public void updateBoard(FreeBoardVO f_vo) {
		session.update("FreeBoard.updateBoard", f_vo);
	}
		
	//게시글 삭제
	public void deleteBoard(int board_Num) {
		session.delete("FreeBoard.deleteBoard", board_Num);
	}
	
	//번호 가져오기 (시퀀스)
	public int getBoardNum() {
		return session.selectOne("FreeBoard.getBoardNum");
	}
	
	//댓글
	
	//댓글 추가
	public boolean insertReply(FreeReplyVO r_vo) {
		return session.insert("FreeBoard.insertReply", r_vo) == 1;
	}
	
	//댓글 목록
	public List<FreeReplyVO> getReplyList(int board_Num){
		return session.selectList("FreeBoard.getReplyList", board_Num);
	}
	
	//댓글 삭제
	public boolean deleteReply(int reply_Num) {
		return session.delete("FreeBoard.deleteReply", reply_Num) == 1;
	}
	
	//댓글 수정
	public boolean updateReply(FreeReplyVO r_vo) {
		return session.update("FreeBoard.updateReply", r_vo) == 1;
	}
	
//	----------------검색
//	searchListFree - 프리보드 
	public List<FreeBoardVO> searchList(String category, String category2,String keyword,int startRow,int endRow){
		
		HashMap<String, Object> searchMap = new HashMap<>();
		
		searchMap.put("startRow", startRow);
		searchMap.put("endRow", endRow);	
		searchMap.put("category", category);
		searchMap.put("category2", category2);
		searchMap.put("keyword", keyword);
		return session.selectList("FreeBoard.searchList", searchMap);
	}	
	public int getSearchBoardCnt(String category, String keyword){
		HashMap<String, Object> searchMap = new HashMap<>();
		searchMap.put("category", category);
		searchMap.put("keyword", keyword);
		return session.selectOne("FreeBoard.searchListCnt", searchMap);
	}
}
