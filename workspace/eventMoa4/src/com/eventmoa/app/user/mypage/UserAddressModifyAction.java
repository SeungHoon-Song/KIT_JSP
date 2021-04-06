package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;
import com.eventmoa.app.user.vo.UserVO;

public class UserAddressModifyAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		UserVO u_vo = new UserVO();
		UserDAO u_dao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		String user_Id = (String) req.getAttribute("user_Id");
		String user_Zipcode = req.getParameter("user_Zipcode");
		String user_Address = req.getParameter("user_Address");
		String user_Address_DETAIL = req.getParameter("user_Address_DETAIL");
		String user_Address_Etc = req.getParameter("user_Address_Etc");
		
		u_vo.setUser_Zipcode(user_Zipcode);
		u_vo.setUser_Address(user_Address);
		u_vo.setUser_Address_DETAIL(user_Address_DETAIL);
		u_vo.setUser_Address_Etc(user_Address_Etc);
		
		
		if(u_dao.getUserAddress(user_Id)) {
			System.out.println("아이디 일치");
			if(u_dao.modifyUserAddress(u_vo)) {
				out.println("이메일 수정 성공");
			}else {
				out.println("이메일 수정 실패");
			}
		}else {
			System.out.println("아이디 불일치");
		}
		out.close();
	
		
		
		return null;
	}
}
