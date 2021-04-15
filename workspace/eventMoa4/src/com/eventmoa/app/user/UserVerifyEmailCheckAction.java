package com.eventmoa.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;

public class UserVerifyEmailCheckAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		int verify = Integer.parseInt(req.getParameter("verify"));
		UserVerifyEmailAction uv = null;
		
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html;charset=utf-8");
		ActionForward forward = null;
		String num = forward.getVerify();
		
		int dice = Integer.parseInt(num);
		if(verify == dice ) {
			out.println("ok");
		} else {
			out.println("not-ok");
		}
		
		out.close();
		
		return null;
	}
}
