package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.PointDAO;
import com.eventmoa.app.user.vo.PointVO;

public class PointReceiptAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		PointDAO p_dao = new PointDAO();
		
		int page = Integer.parseInt(req.getParameter("page"));
		int boardSize = 15;
		
		int endRow = page * boardSize;
		int startRow = endRow - (boardSize - 1);
		
		JSONArray jsonArray=new JSONArray();
		
		HttpSession session = req.getSession();
		String user_Id = (String) session.getAttribute("session_id");
		List<PointVO> receipt_list = p_dao.getReceiptList(startRow, endRow, user_Id);
		
		for(PointVO receipt : receipt_list) {
			JSONObject obj = new JSONObject();
			/*private int point_Num;
			private String point_Date;
			private int point_Amount;
			private String point_Content;
			private String user_Id;*/
			
			obj.put("point_Date", receipt.getPoint_Date());
			obj.put("point_Num", receipt.getPoint_Num());
			obj.put("point_Amount", receipt.getPoint_Amount());
			obj.put("point_Content", receipt.getPoint_Content());
			
			jsonArray.add(obj);
		}
		out.println(jsonArray.toJSONString());
		
		return null;
	}

}
