package com.eventmoa.app.eventboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.eventboard.vo.EventFilesVO;

public class BoardViewOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		EventDAO e_dao =new EventDAO();
		EventDAO d_dao =new EventDAO();
		EventBoardVO e_vo =new EventBoardVO();
		EventFilesVO f_vo =new  EventFilesVO();
		
		ActionForward forward =null;
		int boardNum =Integer.parseInt(req.getParameter("boardNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		e_vo= e_dao.getDetail(boardNum);
		
		
		
		return null;
	}

	
	
	
}
