package com.eventmoa.app.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;

public class FreeBoardModifyAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		FreeBoardDAO f_dao = new FreeBoardDAO();
		ActionForward forward = new ActionForward();
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		req.setAttribute("f_vo", f_dao.getDetail(board_Num));
		req.setAttribute("page", page);
		forward.setRedirect(false);
		forward.setPath("/community/freeTalkModify.jsp");
		
		return forward;
	}
}
