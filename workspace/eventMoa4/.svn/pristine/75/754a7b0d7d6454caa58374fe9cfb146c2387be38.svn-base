package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;
import com.eventmoa.app.user.vo.UserVO;

public class UserJoinOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forword = null;
		
		UserVO u_vo = new UserVO();
		UserDAO u_dao = new UserDAO();
		u_vo.setUser_Id(req.getParameter("user_Id"));
		u_vo.setUser_Pw(req.getParameter("user_Pw"));
		u_vo.setUser_Name(req.getParameter("user_Name"));
		u_vo.setUser_Email(req.getParameter("user_Email"));
		u_vo.setUser_Email_Hash(req.getParameter("user_Email"));
		u_vo.setUser_Zipcode(req.getParameter("user_Zipcode"));
		u_vo.setUser_Address(req.getParameter("user_Address"));
		u_vo.setUser_Address_DETAIL(req.getParameter("user_Address_DETAIL"));
		u_vo.setUser_Address_Etc(req.getParameter("user_Address_Etc"));
		u_vo.setUser_Point(0);

		//DB에서 INSERT 실패 시 
		if(!u_dao.join(u_vo)) {
			resp.setContentType("text/html;charset=utf-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('서버가 불안정합니다. 잠시 후 다시 시도해주세요.');</script>");
			out.close();
		}else {
			//DB에서 INSERT 성공 시
			forword = new ActionForward();
			
			//이동할 페이지 정보를 담아서 리턴
			forword.setRedirect(false);
			forword.setPath("/user/UserLogin.us");
		}
		
			//alert창 띄우고 페이지이동 : 오류, 절대 불가능
			//컨트롤러에서 응답은 반드시 한 번만 가능하다.
			return forword;
		}
	}