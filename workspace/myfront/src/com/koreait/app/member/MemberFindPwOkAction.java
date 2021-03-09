package com.koreait.app.member;

import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.util.Gmail;

public class MemberFindPwOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		String email = req.getParameter("email");
		MemberDAO m_dao = new MemberDAO();
		
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html;charset=utf-8");
		
		if(m_dao.checkEmail(email)) {
			out.print("ok");
			String host = "http://localhost:8081/myFront/";
			String from = "SongTest";
			String to = email;
			String subject = "Forgot your password?";
			String content = "다음 링크에 접속하여 이메일 인증을 진행해주세요. "; 
//			        + "<a href='" + host + "gmailCheckAction.jsp?code=" + code
//					+ "'>이메일 인증하기</a>";
			
			// SMTP에 접속하기 위한 정보를 기입합니다.
			Properties p = new Properties();
			p.put("mail.smtp.user", from);
			p.put("mail.smtp.host", "smtp.googlemail.com");
			p.put("mail.smtp.port", "465");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.debug", "true");
			p.put("mail.smtp.socketFactory.port", "465");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");
			
			try{
				Authenticator auth = new Gmail();
				Session ses = Session.getInstance(p, auth);
				ses.setDebug(true);
				MimeMessage msg = new MimeMessage(ses); 
				msg.setSubject(subject);
				Address fromAddr = new InternetAddress(from);
				msg.setFrom(fromAddr);
				Address toAddr = new InternetAddress(to);
				msg.addRecipient(Message.RecipientType.TO, toAddr);
				msg.setContent(content, "text/html;charset=UTF-8");
				Transport.send(msg);
				
			} catch(Exception e){
				e.printStackTrace();
				out.println("<script>");
				out.println("alert('오류가 발생했습니다..');");
				out.println("history.back();");
				out.println("</script>");
				out.close();		
				
			}
		}
		
		return null;
	}
}
