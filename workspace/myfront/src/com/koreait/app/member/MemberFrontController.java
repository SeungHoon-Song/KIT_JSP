package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class MemberFrontController extends HttpServlet{
	
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
		req.setCharacterEncoding("UTF-8");
		
		String requestURI = req.getRequestURI();
		
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		
		if(command.equals("/member/MemberJoinOk.me")) {
			System.out.println("MemberJoinOk 들어옴");
			try {
				forward = new MemberJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(command.equals("/member/MemberJoin.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/joinForm.jsp");
			
		}else if(command.equals("/member/MemberCheckEmailOk.me")) {
			try {
				forward = new MemberCheckEmailOkAction().execute(req, resp);
			} catch (Exception e) {;}
			
		}else if(command.equals("/member/MemberLogin.me")) {
			System.out.println("성공후 로그인창");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/loginForm.jsp");
			
		}else if(command.equals("/member/MemberLoginOk.me")) {
			try {
				forward = new MemberLoginOkAction().execute(req, resp);
			} catch (Exception e) {;}
			
		}else if(command.equals("/member/MemberLoginFalse.me")) {
			//전달받은 login 값을 가져온다.
			String login = req.getParameter("login");
			forward = new ActionForward();
			forward.setRedirect(false);
			//												만약 login에 false가 들어 있다면 .jsp파일에도 전달해준다.
			//												하지만 login이 null이면 파라미터를 전달하지 않는다.
			forward.setPath("/app/member/loginForm.jsp" + (login != null ? "?login=false" : ""));
			
		}else if(command.equals("/member/MemberFindPwOk.me")) {
			try {
				forward = new MemberFindPwOkAction().execute(req, resp);
			} catch (Exception e) {;}
		}
		
		else {
			//만약 위의 모든 분기에 들어가지 않았다면, 요청한 URI가 잘못된 것이다.
			//따라서 컨트롤러를 호출할 필요 없이 직접 404 오류 안내 페이지로 이동시켜준다.
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
