package com.eventmoa.app.reviewboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;

public class ReviewBoardReplyDeleteOkAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		
		int reply_Num = Integer.parseInt(req.getParameter("reply_Num"));
		
		if(r_dao.deleteReply(reply_Num)) {
			out.println("삭제 성공");
		}else {
			out.println("삭제 실패");
		}
		out.close();
		
		return null;
	}
}
