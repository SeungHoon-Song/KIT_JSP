package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.ActionForward;

public class UserLogoutAction {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession();
		ActionForward forward = new ActionForward();
		
		
		session.invalidate();

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserLogout.us");
		return forward;
	}

}
