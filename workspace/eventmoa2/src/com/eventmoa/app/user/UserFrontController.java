package com.eventmoa.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;

public class UserFrontController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
		String type = req.getParameter("type");
			
		/* main 컨트롤러 */
		if(command.equals("/main.us")) {
			type = req.getParameter("type");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/index.jsp" + (type != null ? "?type=login" : ""));
		}
		
		/* 회원가입 컨트롤러 */
		else if (command.equals("/user/UserJoinOk.us")) {
			try {
				forward = new UserJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/user/UserJoin.us")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/user/signup.jsp");
		}
		/*	로그인 컨틀롤러 */
		else if (command.equals("/user/UserLoginOk.us")) {
			try {
				forward = new UserLoginOKAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserLogin.us")) {
			//전달받은 login 값을 가져온다.
			String login = req.getParameter("login");
			forward = new ActionForward();
			forward.setRedirect(false);
																	
			forward.setPath("/user/login.jsp" + (login != null ? "?login=false" : ""));
		}
		
		/* 이메일 인증 부분 */
		else if (command.equals("/user/verifyCheckEmail.us")) {
			try {
				forward = new UserVerifyCheckAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/verifyEmail.us")) {
			try {
				 forward = new UserVerifyEmailAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/verifyCheck.us")) {
			try {
				forward = new UserVerifyEmailCheckAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 유효성 부분  */
		// 중복검사 아이디 / 이메일 
		else if (command.equals("/user/UserCheckIdOk.us")) {
			try {
				forward = new UserCheckIdOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserCheckEmailOk.us")) {
			try {
				// forward = new // Email 중복검사 
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 로그아웃 부분 */
		else if (command.equals("/user/UserLogout.us")) {
			try {
				 forward = new UserLogoutAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/*아이디 비밀번호 찾기 부분*/
		else if (command.equals("/user/UserFindIdOk.us")) {
			try {
				 forward = new UserFindIdOkAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		else if (command.equals("/user/UserFindPwOk.us")) {
			try {
				 forward = new UserFindPwOkAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 에러 응답없는 404 페이지 */
		else {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/error/404.jsp");
		}
		
		
		if(forward != null ) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
		
		
	}

}
