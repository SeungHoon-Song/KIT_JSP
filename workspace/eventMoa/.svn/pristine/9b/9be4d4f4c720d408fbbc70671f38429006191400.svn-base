package com.eventmoa.app.eventboard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;



public class BoardFrontController extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doProcess(req, resp);
		}

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doProcess(req, resp);
		}

		protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			String requestURI = req.getRequestURI();
			String contextPath = req.getContextPath();
			String command = requestURI.substring(contextPath.length());
			ActionForward forward = null;
			switch(command){
			/* ------- 이벤트 관련 ----------*/
			/* 메인 이벤트 페이지  */
			case "/eventboard/MainEvent.ev":
				try {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("/Event/mainEvent.jsp");
				} catch (Exception e) {System.out.println(e);}
				break;
			/* 상세 보기 페이지 */
			case "/eventboard/EventView.ev":
				try {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("/Event/eventView.jsp");
				} catch (Exception e) {System.out.println(e);}
				break;
			/* 이벤트 리스트 페이지 */
			case "/eventboard/EventBoardList.ev":
				try {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("/Event/nowEvent.jsp");
				} catch (Exception e) {System.out.println(e);}
				break;
			case "/eventboard/EventBoardListOK.ev": 
				System.out.println("1");
				try {
					new EventBoardListOKAction().execute(req, resp);
				} catch (Exception e) {
					System.out.println(e);
				}
				break;
				/* 이벤트 등록 작성 */
			case "/eventboard/EventWriter.ev":
				try {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("/Event/eventWriter.jsp");
				} catch (Exception e) {System.out.println(e);}
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

	
