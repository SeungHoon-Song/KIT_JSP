package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

public class MemberLoginOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();
		ActionForward forward = new ActionForward();

		MemberDAO m_dao = new MemberDAO();

		String email = req.getParameter("memberEmail");
		String pw = req.getParameter("memberPw");
		
		System.out.println("LoginOkaction");
		if (m_dao.login(email, pw)) {
			// 로그인 성공 시
			System.out.println("로그인 성공");
			session.setAttribute("session_id", email);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/BoardList.bo");
		} else {
			// 로그인 실패
			System.out.println("로그인 실패");
			forward.setRedirect(false);
			// 로그인 실패 시 경고창을 출력해주기 위해서 login 파라미터를 같이 전송해준다.
			forward.setPath("/member/MemberLoginFalse.me?login=false");
		}
		return forward;
	}
}
