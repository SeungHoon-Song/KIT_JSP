package com.eventmoa.app.freeboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.vo.FreeReplyVO;

public class FreeBoardReplyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		FreeReplyVO r_vo = new FreeReplyVO();
		FreeBoardDAO r_dao = new FreeBoardDAO();
		ActionForward forward = new ActionForward();
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		String user_Id = (String)session.getAttribute("session_id");
		String reply_Content = req.getParameter("reply_Content");
		String reply_Date = req.getParameter("reply_Date");
		
		
		r_vo.setBoard_Num(board_Num);
		r_vo.setUser_Id(user_Id);
		r_vo.setReply_Content(reply_Content);
		r_vo.setReply_Date(reply_Date);
		
		if(r_dao.insertReply(r_vo)) {
			out.print("추가 성공");
		}else {
			out.print("추가 실패");
		}
		out.close();
		
		
		return null;
	}
}
