package com.eventmoa.app.reviewboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.vo.ReviewReplyVO;

public class ReviewBoardReplyModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		ReviewReplyVO r_vo = new ReviewReplyVO();
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ActionForward forward = new ActionForward();
		
		int reply_Num = Integer.parseInt(req.getParameter("reply_Num"));
		String reply_Content = req.getParameter("content");
		
		
		r_vo.setReply_Num(reply_Num);
		r_vo.setReply_Content(reply_Content);
		
		if(r_dao.updateReply(r_vo)) {

		}else {

		}

		
		return null;
	}
}
