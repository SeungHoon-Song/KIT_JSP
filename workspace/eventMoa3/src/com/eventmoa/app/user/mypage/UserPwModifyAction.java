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
		
		
		String user_Id = (String) req.getAttribute("user_Id");
		String user_Pw = (String) req.getParameter("user_Pw");
		
		UserDAO dao = new UserDAO();
		
		user_Pw = dao.decrypt(user_Pw);
		
		if(req.getParameter("user_Pw") != null ) {
			user_Pw = req.getParameter("user_Pw");
			if(dao.getUserPw(user_Id)) {
				String temp = dao.modifyUserPw(user_Pw);
				PrintWriter out = resp.getWriter();
				out.println("<script>");
				out.println("alert('성공적으로 비밀번호가 변경 되었습니다. ["+temp+"]  다시 로그인 해주세요.');");
				out.println(" location.href = '/main.us'; ");
				out.println("</script>");
				out.close();
			}
		} else {
			PrintWriter out = resp.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호 변경이 실패 하였습니다. 잠시 후 다시 시도해주세요.');"
					+ "history.back();");
			out.println("</script>");
			out.close();
		}
		
	
		
		
		return null;
	}
}
