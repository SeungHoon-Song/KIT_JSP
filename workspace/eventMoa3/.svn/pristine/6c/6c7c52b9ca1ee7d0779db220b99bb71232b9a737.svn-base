package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserNameModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		
		String user_Id = (String) req.getAttribute("user_Id");
		String user_Name = null;
		
		UserDAO dao = new UserDAO();
		
		if(req.getParameter("user_Name") != null ) {
			user_Name = req.getParameter("user_Name");
			if(dao.getUserName(user_Id)) {
				String temp = dao.modifyUserName(user_Name);
				PrintWriter out = resp.getWriter();
				out.println("<script>");
				out.println("alert('성공적으로 이름 ["+temp+"] 으로 변경 하였습니다. 다시 로그인 해주세요.');");
				out.println(" location.href = '/main.us'; ");
				out.println("</script>");
				out.close();
			}
		} else {
			PrintWriter out = resp.getWriter();
			out.println("<script>");
			out.println("alert('이름 변경이 실패 하였습니다. 잠시 후 다시 시도해주세요.');"
					+ "history.back();");
			out.println("</script>");
			out.close();
		}
		
	
		
		
		return null;
	}
}
