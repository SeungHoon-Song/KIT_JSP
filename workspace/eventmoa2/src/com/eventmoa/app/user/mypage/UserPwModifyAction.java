package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserPwModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		HttpSession session = req.getSession();
		UserDAO u_dao = new UserDAO();
		
		String user_Id = req.getParameter("session_id");
		String user_Pw = req.getParameter("user_Pw");
		
		ActionForward forward = null;
		

		if(user_Id != null ) {
				if(u_dao.modifyPw(user_Id, user_Pw)) {
					forward = new ActionForward();
					session.invalidate();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath() + "/main.us");
					return forward;
				} else {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath(req.getContextPath()+"/mypage/MyPageInfo.us");
				}
		}else {

		}
		
	
		
		
		return forward;
	}
}
