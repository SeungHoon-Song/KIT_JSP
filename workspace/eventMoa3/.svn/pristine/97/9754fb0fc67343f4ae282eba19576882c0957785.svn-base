package com.eventmoa.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserCheckEmailOkAction implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	req.setCharacterEncoding("UTF-8");
	resp.setCharacterEncoding("UTF-8");
	
	String new_email = req.getParameter("email");
	System.out.println(new_email);
	
	UserDAO u_dao = new UserDAO();
	
	PrintWriter out = resp.getWriter();
	
	resp.setContentType("text/html;charset=utf-8");
	
	if(new_email != null ) {
		if(u_dao.checkEmail(new_email)) {
			out.println("not-ok");
		} else {
			out.println("ok");
		}
	out.close();
	} else {
		out.println("<script>");
		out.println("alert('서버 오류로 인해 다시 시도 해주세요. 불편을 드려 죄송합니다.');");
		out.println("location.href = '/main.us");
		out.println("</script>");
		out.close();
	}
	
	return null;
}
}
