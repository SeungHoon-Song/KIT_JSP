package com.eventmoa.app.freeboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;

public class FreeBoardReplyDeleteOkAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		FreeBoardDAO r_dao = new FreeBoardDAO();
		
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
