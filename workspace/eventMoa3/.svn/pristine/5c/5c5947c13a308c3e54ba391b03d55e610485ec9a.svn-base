package com.eventmoa.app.eventboard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.UserCheckIdOkAction;
import com.eventmoa.app.user.UserFindIdOkAction;
import com.eventmoa.app.user.UserFindPwOkAction;
import com.eventmoa.app.user.UserJoinOkAction;
import com.eventmoa.app.user.UserLoginOKAction;
import com.eventmoa.app.user.UserLogoutAction;
import com.eventmoa.app.user.UserVerifyCheckAction;
import com.eventmoa.app.user.UserVerifyEmailAction;
import com.eventmoa.app.user.UserVerifyEmailCheckAction;



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
			String requestURI = req.getRequestURI();
			String contextPath = req.getContextPath();
			String command = requestURI.substring(contextPath.length());
			ActionForward forward = null;
			switch(command){
			case "/eventboard/EventBoardListOK.ev": 
				System.out.println("1");
				try {
					new EventBoardListOKAction().execute(req, resp);
				} catch (Exception e) {
					System.out.println(e);
				}
				break;
				
			}
		}
	}

	
