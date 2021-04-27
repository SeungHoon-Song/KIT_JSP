package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

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
import com.eventmoa.util.Gmail;

public class UserVerifyEmailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		ActionForward forward = null;
		
		
		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311;
		
		String userEmail = null;
		
		if (req.getParameter("email") != null ) {
			userEmail = req.getParameter("email");
		}
		
		String host = "http://event-moa.kro.kr";
		String from = "eventmoa1515@gmail.com";
		String to = userEmail;
		String subject = "이벤트모아 사이트를 이용을 위한 회원가입 인증 메일입니다.";
		String content = "안녕하세요 회원님. 저희 홈페이지를 찾아주셔서 감사합니다."
				+ "<br> 인증번호  : "+ dice + " "
				+ "<br> 받으신 인증번호로 입력 해주세요. 감사합니다.";
		
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
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter script = resp.getWriter();
			
			script.print("1");
			
			Authenticator auth = new Gmail();
			
			script.print("2");
			
			Session ses = Session.getInstance(p, auth);
			
			script.print("3");
			
			ses.setDebug(true);
			
			script.print("4");
			
			MimeMessage msg = new MimeMessage(ses);
			
			script.print("5");
			
			msg.setSubject(subject);
			
			script.print("6");
			
			Address fromAddr = new InternetAddress(from);
			
			script.print("7");
			
			msg.setFrom(fromAddr);
			
			script.print("8");
			
			Address toAddr = new InternetAddress(to);
			
			script.print("9");
			
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			
			script.print("10");
			
			msg.setContent(content, "text/html;charset=UTF-8");
			Transport.send(msg);
			script.print("11");
			
			String result = Integer.toString(dice);
			script.println(result);
			script.close();
		} catch (Exception e) {
			e.printStackTrace();
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('오류가 발생했습니다.'); history.back();");
			script.println("</script>");
			script.close();
		}
		
		return forward;
				
				
		
	}
	
}
