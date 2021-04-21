package com.eventmoa.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserCheckIdOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String user_Id = req.getParameter("user_Id");
		
		UserDAO u_dao = new UserDAO();
		
		PrintWriter out = resp.getWriter();
		
		if(!u_dao.checkId(user_Id)) {
			out.println("ok");
		}else {
			out.println("not-ok");
		}
		out.close();
		
		return null;
	}
}
