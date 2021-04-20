package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserEmailModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		HttpSession session = req.getSession();
		String user_email = req.getParameter("user_Email");
		String new_email = req.getParameter("new_Email");
		String userId = req.getParameter("session_id");
		System.out.println(user_email);
		System.out.println(userId);
		UserDAO dao = new UserDAO();
		ActionForward forward = null;
		PrintWriter out = resp.getWriter();
		if(user_email != null ) {
				if(dao.modifyEmail(userId, user_email, new_email)) {
					forward = new ActionForward();
					session.setAttribute("user_Email", new_email);
					forward.setRedirect(false);
					out.println("<script>");
					out.println("alert('이메일 변경을 성공하였습니다.'); "
							+ "location.href = '/user/mypage/MyPageInfo.us'; ");
					out.println("</script>");
					out.close();
				} 
		} else {
			out.println("<script>");
			out.println("alert('죄송합니다. 이메일 변경에 실패하였습니다. \n"
					+ "잠시 후 다시 시도해주세요.');"
					+ "location.href = '/user/mypage/MyPageInfo.us'; ");
			out.println("</script>");
			out.close();
		}
	
		
		
		return null;
	}
}
