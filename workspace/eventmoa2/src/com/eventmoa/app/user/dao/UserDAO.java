package com.eventmoa.app.user.dao;

import java.util.HashMap;
import java.util.Random;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.user.vo.UserVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
import com.eventmoa.util.SHA256;

public class UserDAO {
	//암호화 복호화를 위한 키
	private static final int KEY = 3;

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public UserDAO() {
		session = sessionf.openSession(true);
	}
	
	//회원가입
	public boolean join (UserVO user) {
		user.setUser_Pw(encrypt(user.getUser_Pw()));
		user.setUser_Email_Hash(SHA256.getSHA256(user.getUser_Email()));
		return session.insert("User.Join", user) == 1;
	}
	
	// 이메일 아이디로 불러오기 
	/**
	 * 
	 * @param id
	 * @return String
	 * @author corner
	 * 이메일로 아이디 불러오기 
	 */
	public String getUserEmail(String id) {
		return session.selectOne("User.findEmail", id);
	}
	
	
	//암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for(int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * KEY);
		}
		return en_pw;
	}
	
	//복호화
	public String decrypt(String en_pw) {
		String de_pw = "";
		for(int i = 0; i< en_pw.length(); i++) {
			de_pw += (char)(en_pw.charAt(i) / KEY);
		}
		return de_pw;
	}
	
	//아이디 검사 		true : 중복 아이디 	false : 사용가능 아이디 
	public boolean checkId(String id) {
		return (Integer)session.selectOne("User.checkId", id) == 1;
	}
	
	//이메일 인증번호
	public boolean checkEmailHash(String email) {
		return (Integer)session.selectOne("User.checkEmailHash", email) == 1;
	}
	
	//아이디 찾기
	public String findId(String name, String email) {
		HashMap<String, String> user = new HashMap<>();
		user.put("name", name);
		user.put("email", email);
		
		return session.selectOne("User.findId", user);
	}

			
	//임시 비밀번호 발급
	public String findPw(String id, String email2) {
		HashMap<String, String> user = new HashMap<>();
		String randomPw = getTempPw(); 
		
		user.put("id", id);
		user.put("email2", email2);
		user.put("pw", randomPw);
		if(session.update("User.findPw", user) == 1) {
			return randomPw;	
			
		}
		return null;
	}
	
	//로그인 
	public boolean login(String id, String pw) {
		HashMap<String,String> user = new HashMap<>();
		user.put("id", id);
		user.put("pw", encrypt(pw));
     
		return (Integer)session.selectOne("Login", user) == 1;
	
	}
	

	//임시 비밀번호 생성 메소드
	protected String getTempPw() {
		String random = UUID.randomUUID().toString().replaceAll("-", "");
		String randomPw = random.substring(0,8);
		
		return randomPw;
		
	}
	

	/**
	 * 
	 * @param id
	 * @return boolean true = ok / false = none
	 * @author corner
	 * @note 유저 이름 변경전 아이디로 이름 조회하는 메소드
	 */
	public String getUserName(String id) {
		String name = "";
		name = session.selectOne("User.findName", id);
		return name;
	}
	public boolean modifyUserName(String id, String name) {
		HashMap<String, String> user = new HashMap<>();
		user.put("user_Id", id);
		user.put("user_Name", name);
		return (Integer) session.update("User.modifyName", user) == 1;
	}
	
//	유저 MYPAGE INFO
	
	/**
	 * 
	 * @param String id
	 * @return String
	 * @apiNote 유저의 주소 참고항목을 가져올 메소드
	 */
	public String getUserZipcode(String id) {
		return session.selectOne("User.findZipcode", id);
	}
	public String getUserAddress(String id) {
		return session.selectOne("User.findAddress", id);
	}
	public String getUserAddressEtc(String id) {
		return session.selectOne("User.findAddressEtc", id);
	}
	public String getUserAddressDETAIL(String id) {
		return session.selectOne("User.findAddressDETAIL", id);
	}
	
	//주소 수정
	public String getUserAddressAll(String id) {
		String addr = "";
		addr = session.selectOne("User.findAddressAll", id);
		return addr;
	}
	public boolean modifyUserAddress(UserVO u_vo) {
		return session.update("User.modifyAddress", u_vo) == 1;
	}
	
	
	//비밀번호 수정
	public String getUserPw(String id) {
		String pw = "";
		pw = decrypt(session.selectOne("User.currentPw", id));
		return pw;
	}
	public boolean modifyPw(String id, String pw) {
		HashMap<String, String> user = new HashMap<>();
		user.put("user_Id", id);
		user.put("user_Pw", pw);
		
		return (Integer)session.update("User.modifyPw", user) == 1;
	}
}