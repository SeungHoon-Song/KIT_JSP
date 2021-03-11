package com.koreait.app.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class MemberDAO {
	private static final int KEY = 3;

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;

	public MemberDAO() {
		session = sessionf.openSession(true);
	}

	// 회원가입
	public boolean join(MemberVO member) {
		member.setMemberPw(encrypt(member.getMemberPw()));
		return session.insert("Member.join", member) == 1;
	}

	// 암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char) (pw.charAt(i) * KEY);
		}
		return en_pw;
	}

	// 복호화
	public String decrypt(String en_pw) {
		String de_pw = "";
		for (int i = 0; i < en_pw.length(); i++) {
			de_pw += (char) (en_pw.charAt(i) / KEY);
		}
		return de_pw;
	}
	
	//아이디 중복검사
	public boolean checkEmail(String email) {
		return (Integer)session.selectOne("Member.checkEmail", email) == 1;
	}
	
	//로그인
	public boolean login(String email, String pw) {
		HashMap<String, String> member = new HashMap<>();
		
		member.put("email", email);
		member.put("pw", encrypt(pw));
		
		return (Integer)session.selectOne("Member.login", member) == 1;
	}
	
	//비밀번호 찾기
	/*public boolean findPw(String email) {
		return (Integer)session.selectOne("Member.findPw", email) == 1;
	}*/
	
	//비밀번호 찾기 복호화
	public String findPw(String email) {
		return decrypt(session.selectOne("Member.findPw", email));
	}


}
