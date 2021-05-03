package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.user.dao.UserDAO;

public class EventBoardSearchViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		System.out.println("들와");
		EventDAO e_dao = new EventDAO();
		
		PrintWriter out = resp.getWriter();
		UserDAO u_dao = new UserDAO();
		HttpSession session = req.getSession();
		
		String category = req.getParameter("category");
		String keyword = req.getParameter("keyword");
	
	      try {
			if(category.equals("지역별") || category == "" || category == null) {
			     category= null;
			  }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
		String temp = req.getParameter("page");
		
		int page = Integer.parseInt(temp);
		int boardSize = 6;

		int endRow = page * boardSize;
		int startRow = endRow - (boardSize - 1);
		
		JSONArray jsonArray=new JSONArray();
		List<EventBoardVO> events= e_dao.searchList(category, keyword, startRow, endRow);
		for(EventBoardVO board:events) {
			JSONObject jsonObj=new JSONObject();
			jsonObj.put("board_Num", board.getBoard_Num());
			jsonObj.put("board_Title",board.getBoard_Title());
			jsonObj.put("board_Content", board.getBoard_Content());
			jsonObj.put("board_Id", board.getBoard_Id());
			jsonObj.put("board_View", board.getBoard_View());
			jsonObj.put("board_Date", board.getBoard_Date());
			jsonObj.put("board_Zipcode", board.getBoard_Zipcode());
			jsonObj.put("board_Address", board.getBoard_Address());
			jsonObj.put("board_Address_Detail", board.getBoard_Address_Detail());
			jsonObj.put("board_Address_Etc", board.getBoard_Address_etc());
			jsonObj.put("file_name", board.getFile_name());
			jsonObj.put("board_CallNumber", board.getBoard_CallNumber());
			jsonObj.put("board_PhoneNumber", board.getBoard_PhoneNumber());
			
			jsonArray.add(jsonObj);
		}
		out.println(jsonArray.toJSONString());
		out.close();

		return null;
		
		
	}

	
	
	
}
