package com.eventmoa.app.map;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.map.dao.MapDAO;

public class UserPositionAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		MapDAO m_dao = new MapDAO();
		PrintWriter out = resp.getWriter();
		HttpSession  session = req.getSession();
		
		String address = m_dao.getUserAddress((String)session.getAttribute("session_id"));
		
		System.out.println(address);
		out.println(address);
		out.close();
		return null;
	}

}
