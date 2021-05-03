package com.eventmoa.app.reviewboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.reviewboard.vo.ReviewBoardVO;
import com.eventmoa.app.reviewboard.vo.ReviewReplyVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class ReviewBoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;

	public ReviewBoardDAO() {
		session = sessionf.openSession(true);
	}

	// 페이지 별 게시글 목록
	public List<ReviewBoardVO> getBoardList(int startRow, int endRow, String category) {
		HashMap<String, Object> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		pageMap.put("category", category);

		return session.selectList("ReviewBoard.listAll", pageMap);
	}

	// 게시글 갯수
	public int getBoardCnt() {
		return session.selectOne("ReviewBoard.getBoardCnt");
	}

	// 게시글 조회수
	public void updateBoardView(int board_Num) {
		session.update("ReviewBoard.updateBoardView", board_Num);
	}

	// 게시글 작성
	public boolean insertBoard(ReviewBoardVO f_vo) {
		return session.insert("ReviewBoard.insertBoard", f_vo) == 1;
	}

	// 게시글 가져오기
	public ReviewBoardVO getDetail(int board_Num) {
		return session.selectOne("ReviewBoard.getDetail", board_Num);
	}

	// 게시글 수정
	public void updateBoard(ReviewBoardVO f_vo) {
		session.update("ReviewBoard.updateBoard", f_vo);
	}

	// 게시글 삭제
	public void deleteBoard(int board_Num) {
		session.delete("ReviewBoard.deleteBoard", board_Num);
	}

	// 번호 가져오기 (시퀀스)
	public int getBoardNum() {
		return session.selectOne("ReviewBoard.getBoardNum");
	}

	// 댓글
	// 댓글 추가
	public boolean insertReply(ReviewReplyVO r_vo) {
		return session.insert("ReviewBoard.insertReply", r_vo) == 1;
	}

	// 댓글 목록
	public List<ReviewReplyVO> getReplyList(int board_Num) {
		return session.selectList("ReviewBoard.getReplyList", board_Num);
	}

	// 댓글 삭제
	public boolean deleteReply(int reply_Num) {
		return session.delete("ReviewBoard.deleteReply", reply_Num) == 1;
	}

	// 댓글 수정
	public boolean updateReply(ReviewReplyVO r_vo) {
		return session.update("ReviewBoard.updateReply", r_vo) == 1;
	}
//	검색 리스트
	
//	searchListReview - 인증후기
	public List<ReviewBoardVO> searchList(String category, String category3,String keyword,int startRow,int endRow){
		
		HashMap<String, Object> searchMap = new HashMap<>();
		
		searchMap.put("startRow", startRow);
		searchMap.put("endRow", endRow);	
		searchMap.put("category", category);
		searchMap.put("category3", category3);
		searchMap.put("keyword", keyword);
		return session.selectList("ReviewBoard.searchList", searchMap);
	}
	public int getSearchBoardCnt(String category, String keyword){
		HashMap<String, Object> searchMap = new HashMap<>();
		searchMap.put("category", category);
		searchMap.put("keyword", keyword);
		return session.selectOne("ReviewBoard.searchListCnt", searchMap);
	}
}