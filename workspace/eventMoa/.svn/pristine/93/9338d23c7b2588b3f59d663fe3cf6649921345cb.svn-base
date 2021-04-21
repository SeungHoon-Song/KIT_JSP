package com.eventmoa.app.eventboard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.vo.EventReplyVO;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.vo.ReviewReplyVO;

public class EventReplyAddOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		
		EventReplyVO r_vo = new EventReplyVO();
		EventDAO e_dao = new EventDAO();
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		String user_Id = (String)session.getAttribute("session_id");
		String reply_Content = req.getParameter("reply_Content");
		String reply_Date = req.getParameter("reply_Date");
		
		int cntStar = Integer.parseInt(req.getParameter("reply_Star"));
		
		String star = "★";
		if(cntStar == 1 ) {
			star = "★";
		} else if (cntStar == 2 ) {
			star = "★★";
		} else if (cntStar == 3 ) {
			star = "★★★";
		} else if (cntStar == 4 ) {
			star = "★★★★";
		} else if (cntStar == 5 ) {
			star = "★★★★★";
		} else {
			star = "평점없음";
		}
		
		
		r_vo.setBoard_Num(board_Num);
		r_vo.setUser_Id(user_Id);
		r_vo.setReply_Content(reply_Content);
		r_vo.setReply_Date(reply_Date);
		r_vo.setReply_Star(star);
		
		if(r_vo.getReply_Content().length() > 300 ) {
			out.println("글자수가 너무 깁니다. 300자 이내로 작성해주세요.");
		}
		
		if(e_dao.insertReply(r_vo)) {
			out.print("댓글 작성을 완료 하였습니다.");
		}else {
			out.print("댓글 작성을 실패 하였습니다.");
		}
		out.close();
		
		
		return null;
	}
}