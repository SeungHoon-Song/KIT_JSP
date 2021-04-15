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
import com.eventmoa.app.eventboard.vo.EventBoardVO;

public class EventBoardListOKAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out= resp.getWriter();
		EventDAO e_dao = new EventDAO();
		ActionForward forward = new ActionForward();

		String temp = req.getParameter("page");

		int page = Integer.parseInt(req.getParameter("page"));
		int boardSize = 15;

		int endRow = page * boardSize;
		int startRow = endRow - (boardSize - 1);

		

		JSONArray jsonArray=new JSONArray();
		List<EventBoardVO> events= e_dao.getBoardList(startRow, endRow);
		for(EventBoardVO board:events) {
			JSONObject jsonObj=new JSONObject();
			jsonObj.put("board_Num", board.getBoard_Num());
			jsonObj.put("board_Title",board.getBoard_Title());
//			jsonObj.put("board_Content", board.getBoard_Content());
//			jsonObj.put("board_Id", board.getBoard_Id());
//			jsonObj.put("board_View", board.getBoard_View());
//			jsonObj.put("board_Date", board.getBoard_Date());
			jsonObj.put("board_Zipcode", board.getBoard_Zipcode());
			jsonObj.put("board_Address", board.getBoard_Address());
			jsonObj.put("board_Address_Detail", board.getBoard_Address_Detail());
			jsonObj.put("board_Address_Etc", board.getBoard_Address_etc());
			jsonObj.put("file_name", board.getFile_name());
			
			jsonArray.add(jsonObj);
		}
		out.println(jsonArray.toJSONString());

		return null;
	}
}
