package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserPwModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		UserDAO u_dao = new UserDAO();
		
		String id = req.getParameter("user_id");
		
		if(u_dao.modifyUserPw(pw, id)) {
			
		}
		
	
		
		
		return null;
	}
}
