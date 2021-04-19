package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserDeleteAccountOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		UserDAO u_dao = new UserDAO();

		String user_Id = (String)session.getAttribute("session_id");
		
		ActionForward forward = null;

		if (user_Id != null) {
			if (u_dao.deleteAccount(user_Id)) {
				forward = new ActionForward();
				session.invalidate();
				forward.setRedirect(true);
				System.out.println("탈퇴완료");
				forward.setPath(req.getContextPath() + "/main.us");
				return forward;
			} else {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath() + "/mypage/MyPageInfo.us");
			}
		} else {

		}

		return forward;
	}
}
