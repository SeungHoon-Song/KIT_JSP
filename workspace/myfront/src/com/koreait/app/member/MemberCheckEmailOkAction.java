package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

public class MemberCheckEmailOkAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		String email = req.getParameter("email");
		MemberDAO m_dao = new MemberDAO();
		
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html;charset=utf-8");
		
		System.out.println("CheckEmailOkAction 들어옴");
		
		if(m_dao.checkEmail(email)) {
			System.out.println("중복이메일");
			out.println("not-ok");
		}else {
			System.out.println("가능이메일");
			out.println("ok");
		}
		out.close();
		
		return null;
	}
}
