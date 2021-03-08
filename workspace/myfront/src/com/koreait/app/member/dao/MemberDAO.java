package com.koreait.app.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class MemberDAO {
	private static final int KEY = 3;
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstatance();
	SqlSession session;
	
	public MemberDAO() {
		session = sessionf.openSession(true);
	}
	
	//회원가입
	public boolean join(MemberVO member) {
		member.setMemberPw(encrypt(member.getMemberPw()));
		return session.insert("Member.join", member) == 1;
	}
	
	//암호화
		public String encrypt(String pw) {
			String en_pw = "";
			for (int i = 0; i < pw.length(); i++) {
				en_pw += (char)(pw.charAt(i) * KEY);
			}
			return en_pw;
		}
		
		//복호화
		public String decrypt(String en_pw) {
			String de_pw = "";
			for (int i = 0; i < en_pw.length(); i++) {
				de_pw += (char)(en_pw.charAt(i) / KEY);
			}
			return de_pw;
		}
}
