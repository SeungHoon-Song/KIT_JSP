package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.PointDAO;
import com.eventmoa.app.user.vo.UserVO;

public class PointChargeAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = null;
		int point = Integer.parseInt(req.getParameter("point"));
		PointDAO p_dao = new PointDAO();
		HttpSession session = req.getSession();
		UserVO u_vo = new UserVO();
		u_vo.setUser_Id((String)session.getAttribute("session_id"));
		u_vo.setUser_Point(point);
		
		System.out.println(u_vo.getUser_Id());
		System.out.println(u_vo.getUser_Point());
		
		if(p_dao.charge(u_vo)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/user/mypage/pointReceipt.jsp");
		}
		return forward;
	}
}
