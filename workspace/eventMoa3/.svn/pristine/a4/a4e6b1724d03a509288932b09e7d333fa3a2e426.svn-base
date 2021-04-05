package com.eventmoa.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserCheckEmailHashOkAction implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	req.setCharacterEncoding("UTF-8");
	resp.setCharacterEncoding("UTF-8");
	
	String email = req.getParameter("email");
	UserDAO u_dao = new UserDAO();
	
	PrintWriter out = resp.getWriter();
	
	resp.setContentType("text/html;charset=utf-8");
	
	if(u_dao.checkEmailHash(email)) {
		out.println("not-ok");
	}else {
		out.println("ok");
	}
	out.close();
	
	
	return null;
}
}
