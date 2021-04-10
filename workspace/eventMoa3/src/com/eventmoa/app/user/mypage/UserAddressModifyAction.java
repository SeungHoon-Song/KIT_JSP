package com.eventmoa.app.user.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		HttpSession session = req.getSession();
		String user_Id = req.getParameter("session_id");
		String user_Zipcode = req.getParameter("user_Zipcode");
		String user_Address = req.getParameter("user_Address");
		String user_Address_DETAIL = req.getParameter("user_Address_DETAIL");
		String user_Address_Etc = req.getParameter("user_Address_Etc");
		
		u_vo.setUser_Zipcode(user_Zipcode);
		u_vo.setUser_Address(user_Address);
		u_vo.setUser_Address_DETAIL(user_Address_DETAIL);
		u_vo.setUser_Address_Etc(user_Address_Etc);
		u_vo.setUser_Id(user_Id);
		
		if(user_Id != null) {
			if(u_dao.modifyUserAddress(u_vo)) {
				forward = new ActionForward();
				session.setAttribute("user_Zipcode", user_Zipcode);
				session.setAttribute("user_Address", user_Address);
				session.setAttribute("user_AddressEtc", user_Address_Etc);
				session.setAttribute("user_AddressDETAIL", user_Address_DETAIL);
				forward.setRedirect(false);
				out.println("<script>");
				out.println("alert('주소 변경을 성공하였습니다.'); "
						+ "location.href = '/user/mypage/MyPageInfo.us'; ");
				out.println("</script>");
				out.close();
			} 
	} else {
		out.println("<script>");
		out.println("alert('죄송합니다. 주소 변경에 실패하였습니다. \n"
				+ "잠시 후 다시 시도해주세요.');"
				+ "location.href = '/user/mypage/MyPageInfo.us'; ");
		out.println("</script>");
		out.close();
	}
		out.close();
	
		
		
		return null;
	}
}
