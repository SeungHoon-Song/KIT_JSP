package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;

public class PointReceiptAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		
		int point = Integer.parseInt(req.getParameter("point"));
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/mypage/pointReceipt.jsp");
		return forward;
	}

}
