package com.koreait.app.member;

import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

public class MemberFindPwOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		

		MemberDAO m_dao = new MemberDAO();

		String email = req.getParameter("memberEmail");
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html;charset=utf-8");

		System.out.println("FindPwOkaction");

		if (m_dao.findPw(email).isEmpty()) {
			System.out.println("FindPw if문 진입");
			out.println("not-ok");
		} else {
			System.out.println("FindPw else문 진입");
			out.println("ok");
			// mail server 설정
			String host = "smtp.naver.com";
			String user = "s10269kit@naver.com"; // 자신의 네이버 계정
			String password = "Kittest1@";// 자신의 네이버 패스워드

			// 메일 받을 주소
			String to_email = email;

			// SMTP 서버 정보를 설정한다.
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", 465);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");

			// 인증 번호 생성기
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for (int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
				switch (rIndex) {
				case 0:
					// a-z
					temp.append((char) ((int) (rnd.nextInt(26)) + 97));
					break;
				case 1:
					// A-Z
					temp.append((char) ((int) (rnd.nextInt(26)) + 65));
					break;
				case 2:
					// 0-9
					temp.append((rnd.nextInt(10)));
					break;
				}
			}
			
			String AuthenticationKey = temp.toString();
			System.out.println(AuthenticationKey);

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});
			
			// email 전송
			try {
				System.out.println("전송 시도");
				
				MimeMessage msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(user, "Song"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

				// 메일 제목
				msg.setSubject("Forgot your password?");
				// 메일 내용
//				msg.setText("인증 번호는 : " + temp);
				
				msg.setText(" Your password : "+ m_dao.findPw(email));

				Transport.send(msg);
				
				System.out.println("이메일 전송 성공");

			} catch (Exception e) {
				System.out.println("전송 실패");
				e.printStackTrace();// TODO: handle exception
			}
			
		}
		out.close();

		return null;
	}
}
