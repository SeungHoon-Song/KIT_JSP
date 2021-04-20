package com.eventmoa.app.reviewboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;

public class ReviewBoardModifyAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ActionForward forward = new ActionForward();
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		req.setAttribute("r_vo", r_dao.getDetail(board_Num));
		req.setAttribute("page", page);
		forward.setRedirect(false);
		forward.setPath("/community/reviewModify.jsp");
		
		return forward;
	}
}
