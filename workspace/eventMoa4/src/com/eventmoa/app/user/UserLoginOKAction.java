package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession  session = req.getSession();
		ActionForward forward =new ActionForward();
		
		resp.setContentType("text/html;charset=utf-8");
		UserDAO u_dao = new UserDAO();
		
		
		String id = req.getParameter("user_Id");
		String pw = req.getParameter("user_Pw");
		
		if(u_dao.login(id, pw)) {
			System.out.println("로그인 성공");
			session.setAttribute("login", "1");
			session.setAttribute("session_id", id);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+"/main.us");
		}else {
			System.out.println("로그인 실패");
			session.setAttribute("login", "0");
			session.setAttribute("session_id", "비회원");
			forward.setRedirect(false);
			forward.setPath("/user/userLogin.us?login=0");
		}
		
		return forward;
		
	}

	
	 
	
	
	
	
	
}
