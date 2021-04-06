package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserUsingPwAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		
		HttpSession  session = req.getSession();
		ActionForward forward = new ActionForward();
		
		resp.setContentType("text/html;charset=utf-8");
		
		UserDAO u_dao = new UserDAO();

		String pw = req.getParameter("user_Pw");
		
		if(u_dao.currentPw(pw)) {
			System.out.println("비밀번호 확인완료");
			session.setAttribute("session_pw", pw);
			
		}else {
			System.out.println("비밀번호 확인실패");
		}
		
	
		
		
		return null;
	}
}
