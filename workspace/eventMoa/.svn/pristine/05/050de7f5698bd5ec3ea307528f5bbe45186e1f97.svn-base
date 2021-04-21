package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.PointDAO;
import com.eventmoa.app.user.vo.PointVO;
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
		
		String user_id = (String)session.getAttribute("session_id");
		if(p_dao.charge(u_vo)) {
			PointVO p_vo = new PointVO();
			p_vo.setPoint_Amount(point);
			p_vo.setPoint_Content("사용자 포인트 충전 " + point);
			p_vo.setUser_Id(user_id);
			
			if(p_dao.usePoint(p_vo)) {} // 결제 내역으로 등록 
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/user/mypage/pointReceipt.jsp");
		}
		return forward;
	}
}
