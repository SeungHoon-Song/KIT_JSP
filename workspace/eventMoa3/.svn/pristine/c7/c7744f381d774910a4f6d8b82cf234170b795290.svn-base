package com.eventmoa.app.eventboard;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFIlesDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.eventboard.vo.EventFilesVO;

public class EventBoardViewOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		EventDAO e_dao =new EventDAO();
		EventDAO d_dao =new EventDAO();
		EventBoardVO e_vo =new EventBoardVO();
		EventFIlesDAO ef_dao = new EventFIlesDAO();
		
		PrintWriter out= resp.getWriter();
		ActionForward forward = new ActionForward();
		
		int boardNum =Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		e_vo = e_dao.getDetail(boardNum);
		
		if(e_vo != null ) {
			e_dao.updateReadCount(boardNum); // 조회수
			
		}
		
		return null;
	}

	
	
	
}
