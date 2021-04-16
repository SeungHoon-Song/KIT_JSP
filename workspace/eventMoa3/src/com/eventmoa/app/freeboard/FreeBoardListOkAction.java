package com.eventmoa.app.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;

public class FreeBoardListOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		FreeBoardDAO f_dao = new FreeBoardDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		String select = req.getParameter("category"); 
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int boardSize = 10;
		int pageSize = 10;
				
		int endRow = page * boardSize;
				
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize  + 1;
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = f_dao.getBoardCnt();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//requestScope
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("selectOption", select);
		if(select.equals("view")) {
			req.setAttribute("boardListView", f_dao.getBoardListView(startRow, endRow));
		} else if(select.equals("likes")) {
			req.setAttribute("boardListLikes", f_dao.getBoardListLikes(startRow, endRow));
		} else {
			req.setAttribute("boardList", f_dao.getBoardList(startRow, endRow));
		}
		
		/*req.setAttribute("boardList", f_dao.getBoardList(startRow, endRow));
		req.setAttribute("boardListView", f_dao.getBoardListView(startRow, endRow));
		req.setAttribute("boardListLikes", f_dao.getBoardListLikes(startRow, endRow));*/
		
		
		
		
		forward.setRedirect(false);
		forward.setPath("/community/freeTalkList.jsp");
		
		return forward;
	}
}
