package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserNameModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		HttpSession session = req.getSession();
		String new_Name = req.getParameter("user_Name");
		String userId = req.getParameter("session_id");
		UserDAO dao = new UserDAO();
		ActionForward forward = null;
		if(new_Name != null ) {
				if(dao.modifyUserName(userId, new_Name)) {
					forward = new ActionForward();
					session.invalidate();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath() + "/main.us");
					return forward;
				} 
		} else {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath(req.getContextPath()+"/mypage/MyPageInfo.us");
		}
		
	
		
		
		return forward;
	}
}
