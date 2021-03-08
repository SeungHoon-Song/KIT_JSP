package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.app.member.vo.MemberVO;

public class MemberJoinOkAction implements Action{
		
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		
		MemberVO m_vo = new MemberVO();
		MemberDAO m_dao = new MemberDAO();
		
		/*private String memberEmail;
		private String memberPw;
		private String memberName;
		private String memberPhoneNumber;*/
		
		m_vo.setMemberEmail(req.getParameter("memberEmail"));
		m_vo.setMemberPw(req.getParameter("memberPw"));
		m_vo.setMemberName(req.getParameter("memberName"));
		m_vo.setMemberPhoneNumber(req.getParameter("memberPhoneNumber"));

		//DB에서 INSERT 실패 시
		if(!m_dao.join(m_vo)) {
			//직접 HTML문서로 응답
			PrintWriter out = resp.getWriter();
			resp.setContentType("text/html;charset=utf-8");
			out.println("<script>alert('서버가 불안정합니다. 잠시 후 다시 시도해주세요.');</script>");
			out.close();
		}else {
			//DB에서 INSERT 성공 시
			forward = new ActionForward();
			
			//이동할 페이지 정보를 담아서 리턴
			forward.setRedirect(false);
			forward.setPath("/member/MemberLogin.me");
		}
		//alert창 띄우고 페이지이동 : 오류, 절대 불가능
		//컨트롤러에서 응답은 반드시 한 번만 가능하다.
		return null;
	}
}
