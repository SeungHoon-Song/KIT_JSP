package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;

public class UserVerifyEmailAction implements Action {
	
	protected static final String HTTPS_PROTOCOLS = "TLSv1,TLSv1.1,TLSv1.2"; 
	

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		final String HOST = "smtp.naver.com";
		final String USER = "eventmoa1515@naver.com";
		final String PASSWORD = "@ventmoa15";
		
		ActionForward forward = null;
		
		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311;
		
		String userEmail = null;
		
		if (req.getParameter("email") != null ) {
			userEmail = req.getParameter("email");
		}
		
		String to = userEmail;
		Properties prop = new Properties();
		prop.put("mail.smtp.host", HOST);
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.trust", HOST);
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() 
				{
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(USER, PASSWORD);
					}
				});
		
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(USER));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			// 메일 제목
			String subject = "[이벤트 모아] 회원가입 인증번호 발송 메일입니다.";
			message.setSubject(MimeUtility.encodeText(subject,"UTF-8","B"));
			
			String tempPass = Integer.toString(dice);
			String msg =  "안녕하세요 회원님. 저희 홈페이지를 찾아주셔서 감사합니다."
					+ "<br> 인증번호  : "+ tempPass + " "
					+ "<br> 받으신 인증번호로 입력 해주세요. 감사합니다.";			
//			
			message.setContent(msg, "text/html; charset=utf-8");
			
			try {
				Transport.send(message);
				System.out.println("success Message Send to ' " +userEmail +" ' ");
				/*
				 테스트용 주석 
				 * */
				String result = tempPass; 
				resp.setContentType("text/html;charset=UTF-8");
				PrintWriter script = resp.getWriter();
				script.println(result);
				script.close();
				return null;
			} catch (MessagingException e) {
				PrintWriter script = resp.getWriter();
				script.println(" error : " + e + " ");
				e.printStackTrace();
			} 
			
			return forward;
					
		
		
	}
	
	
}
