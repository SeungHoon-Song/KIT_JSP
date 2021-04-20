package com.eventmoa.app.eventboard;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.vo.EventReplyVO;

public class EventReplyListOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String temp = req.getParameter("board_Num");
		int board_Num = Integer.parseInt(temp);
		
		PrintWriter out = resp.getWriter();
		EventDAO e_dao = new EventDAO();
		JSONArray arReply = new JSONArray();
		
		List<EventReplyVO> replys = e_dao.getReplyList(board_Num);
		
		for(EventReplyVO r_vo : replys) {
			JSONObject reply = new JSONObject();
			reply.put("reply_Num", r_vo.getReply_Num());
			reply.put("user_Id", r_vo.getUser_Id());
			reply.put("reply_Content", r_vo.getReply_Content());
			reply.put("reply_Date", r_vo.getReply_Date());
			reply.put("reply_Star", r_vo.getReply_Star());
			arReply.add(reply);
		}
		out.println(arReply.toJSONString());
		out.close();
		
		return null;
	}
}
