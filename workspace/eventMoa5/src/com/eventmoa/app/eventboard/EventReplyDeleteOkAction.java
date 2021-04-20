package com.eventmoa.app.eventboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;

public class EventReplyDeleteOkAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		EventDAO e_dao = new EventDAO();
		
		int reply_Num = Integer.parseInt(req.getParameter("reply_Num"));
		
		if(e_dao.deleteReply(reply_Num)) {
			out.println("댓글을 삭제 하였습니다.");
		}else {
			out.println("삭제를 실패 하였습니다.");
		}
		out.close();
		
		return null;
	}
}
