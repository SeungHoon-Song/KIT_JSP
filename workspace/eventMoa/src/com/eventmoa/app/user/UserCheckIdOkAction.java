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
		
		System.out.println("CheckIdOkAction 들어옴1");
		String id = req.getParameter("id");
		System.out.println("CheckIdOkAction 들어옴2");
		UserDAO u_dao = new UserDAO();
		System.out.println("CheckIdOkAction 들어옴3");
		
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html;charset=utf-8");
		
		System.out.println("CheckIdOkAction 들어옴4");
		
		if(u_dao.checkId(id)) {
			System.out.println("중복된 아이디입니다.");
			out.println("not-ok");
		}else {
			System.out.println("사용 가능한 아이디입니다.");
			out.println("ok");
		}
		out.close();
		
		return null;
	}
}
