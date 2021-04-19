package com.eventmoa.app.reviewboard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.FileDownloadAction;

public class ReviewBoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
		
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		switch(command) {
		case "/reviewboard/ReviewBoardList.rb":
			try {
				forward = new ReviewBoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardWriteOk.rb":
			try {
				forward = new ReviewBoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardView.rb":
			try {
				forward = new ReviewBoardViewAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardModify.rb":
			try {
				forward = new ReviewBoardModifyAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardModifyOk.rb":
			try {
				forward = new ReviewBoardModifyOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardDeleteOk.rb":
			try {
				forward = new ReviewBoardDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/FileDownload.rb":
			try {
				forward = new FileDownloadAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardWrite.rb":
			forward = new ActionForward();
			forward.setRedirect(false);
			req.setAttribute("page", req.getParameter("page"));
			forward.setPath("/community/reviewWrite.jsp");
			break;
		case "/reviewboard/ReviewBoardReplyOk.rb":
			try {
				forward = new ReviewBoardReplyOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardReplyList.rb":
			try {
				forward = new ReviewBoardReplyListAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardReplyDeleteOk.rb":
			try {
				forward = new ReviewBoardReplyDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reviewboard/ReviewBoardReplyModifyOk.rb":
			try {
				forward = new ReviewBoardReplyModifyOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		default:
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/error/404.jsp");
		}
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
		
	}
}
