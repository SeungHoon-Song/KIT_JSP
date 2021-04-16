package com.eventmoa.app.freeboard;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.vo.FreeReplyVO;

public class FreeBoardReplyListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		
		PrintWriter out = resp.getWriter();
		FreeBoardDAO r_dao = new FreeBoardDAO();
		
		JSONArray arReply = new JSONArray();
		
		List<FreeReplyVO> replys = r_dao.getReplyList(board_Num);
		
		for(FreeReplyVO r_vo : replys) {
			JSONObject reply = new JSONObject();
			reply.put("reply_Num", r_vo.getReply_Num());
			reply.put("user_Id", r_vo.getUser_Id());
			reply.put("reply_Content", r_vo.getReply_Content());
			reply.put("reply_Date", r_vo.getReply_Date());
			arReply.add(reply);
		}
		
		out.println(arReply.toJSONString());
		out.close();
		
		return null;
	}
}
