package com.eventmoa.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.mypage.UserAddressModifyAction;
import com.eventmoa.app.user.mypage.UserNameModifyAction;

public class UserFrontController extends HttpServlet {
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
		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		String login = req.getParameter("login");
		ActionForward forward = null;
		/* main 컨트롤러 */
		if(command.equals("/main.us")) {
			try {
//				String login = req.getParameter("login");
				forward = new ActionForward();
				forward.setRedirect(false);
				System.out.println("session id "+req.getAttribute("session_id"));
//				forward.setPath("/index.jsp" + (login != null ? "?login=1" : ""));
				forward.setPath("/index.jsp");
			} catch (Exception e) {;}
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
//			String login = (String)req.getAttribute("login");
			forward = new ActionForward();
			forward.setRedirect(false);
			if(login == null) {
				forward.setPath("/user/login.jsp");
			} else {
				forward.setPath("/user/login.jsp?login=1");
			}
//			forward.setPath("/user/login.jsp" + (login != null ? "?login=1" : ""));
//			forward.setPath("/user/login.jsp");
		}
		
		/* 로그아웃 부분 */
		else if (command.equals("/user/UserLogout.us")) {
			try {
				 forward = new UserLogoutAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
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
				// 아이디 중복검사 
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
		
		
		/* 아이디 비밀번호 찾기 부분 */
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

		/* 마이페이지 부분 컨트롤러 */
		else if (command.equals("/mypage/myPage.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_list.jsp");  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 정보수정 컨트롤러 */
		else if (command.equals("/user/UserModifyName.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_name.jsp");  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserModifyNameOk.us")) {
			try {
				 forward = new UserNameModifyAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 주소수정 */
		else if (command.equals("/user/UserModifyAddress.us")) {
			try {
				 forward = new ActionForward();
				 forward.setRedirect(false);
				 forward.setPath("/user/mypage/myPage_address.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserModifyAddress.us")) {
			try {
				 forward = new UserAddressModifyAction().execute(req, resp);
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
