package com.eventmoa.app.freeboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.vo.FreeReplyVO;

public class FreeBoardReplyModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		FreeReplyVO r_vo = new FreeReplyVO();
		FreeBoardDAO r_dao = new FreeBoardDAO();
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
