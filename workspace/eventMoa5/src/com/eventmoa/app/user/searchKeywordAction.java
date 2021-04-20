package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;

public class searchKeywordAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		EventDAO e_dao = new EventDAO();
		FreeBoardDAO f_dao = new FreeBoardDAO();
		ActionForward forward = new ActionForward();
		
		String category = req.getParameter("category");
		String keyword = req.getParameter("keyword");
		
//		List<EventBoardVO> ev_list = e_dao.searchList(category, keyword);
		
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int boardSize = 10;
		int pageSize = 10;
		
		int endRow = page * boardSize;
		
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = (f_dao.getBoardCnt() + e_dao.getBoardCnt());
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("EventBoardList", e_dao.getBoardList(startRow, endRow));
		req.setAttribute("FreeBoardList", f_dao.getBoardList(startRow, endRow,category));
		req.setAttribute("category", category);
		req.setAttribute("keyword", keyword);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		
		
		forward.setRedirect(false);
		forward.setPath("/searchViewPage.jsp");
		
		return forward;
	}

}
