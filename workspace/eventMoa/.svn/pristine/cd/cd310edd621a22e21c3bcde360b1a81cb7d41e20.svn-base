package com.eventmoa.app.user.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.user.vo.PointVO;
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
	
	//-----------------------포인트 insert----------------------------
	/**
	 * 
	 * @param user_Id, content
	 * @return boolean 
	 * @NOTE 포인트 지급
	 */
//	public boolean insertPoint(String user_Id, String content) {
//		HashMap<String, String> map = new HashMap<String, String>();
//		map.put("user_Id", user_Id);
//		map.put("content", content);
//		
//		return session.insert("PointBoard.insertPoint", map) == 1;
//	}
	public boolean insertPoint(PointVO p_vo) {
		return session.insert("PointBoard.insertPoint", p_vo) == 1;
	}
	
	// ----------------------- 포인트 결제내역
//	
//	public String getPointReceipt(String user_Id) {
//		List<PointVO> p_list = session.selectList("PointBoard.getPointReceipt", user_Id);
//		return p_list.toString();
//	}
	
	//페이지 별 게시글 목록
	public List<PointVO> getReceiptList(int startRow,int endRow){
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return session.selectList("PointBoard.getReceiptList", pageMap);
	}
	
}
