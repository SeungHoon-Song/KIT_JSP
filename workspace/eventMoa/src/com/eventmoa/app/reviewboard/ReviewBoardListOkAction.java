package com.eventmoa.app.reviewboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;

public class ReviewBoardListOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ActionForward forward =new ActionForward();
		
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int boardSize = 10;
		int pageSize = 10;
				
		int endRow = page * boardSize;
				
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize  + 1;
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = r_dao.getBoardCnt();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//requestScope
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("boardList", r_dao.getBoardList(startRow, endRow));
		req.setAttribute("boardListView", r_dao.getBoardListView(startRow, endRow));
		req.setAttribute("boardListLikes", r_dao.getBoardListLikes(startRow, endRow));
		
		forward.setRedirect(false);
		forward.setPath("/community/reviewList.jsp");
		
		return forward;
	}
}
