package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;
import java.util.UUID;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;
import com.eventmoa.app.user.vo.UserVO;
import com.eventmoa.util.Gmail;

public class UserFindPwOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		UserDAO u_dao = new UserDAO();
		UserVO u_vo = new UserVO();
		
		String id = req.getParameter("user_Id");
		String email = req.getParameter("user_Email2");
		String pw = u_dao.findPw(id, email);
		
		PrintWriter out = resp.getWriter();
		
		
		
		
		resp.setContentType("text/html;charset=utf-8");
		
		if(pw != null) {
			out.println("ok");
			String host = "http://event-moa.kro.kr";
			String from = "eventmoa1515@gmail.com";
			String to = email;
			String subject = "이벤트모아 사이트에서 요청하신 임시 비밀번호 메일입니다.";
			String content = "안녕하세요 회원님. 저희 홈페이지를 찾아주셔서 감사합니다."
					+ "<br> 임시 비밀번호  : " + pw + "<br> 감사합니다.";;
			
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
			
			try {
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
				
				//테스트
				System.out.println("이메일 전송 성공");

			} catch (Exception e) {
				//테스트
				System.out.println("이메일 전송 실패");
				e.printStackTrace();
			}
		}else {
			out.println("not-ok");
			
		}
			out.close();
			
			return null;
	
		}
		
	}