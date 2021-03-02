package com.koreait.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;
import com.koreait.vo.MemberVO;

public class MemberDAO {
	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public MemberDAO() {
		sqlsession = sqlsession_f.openSession(true);	//default : false, 자동 커밋 여부
	}
	
	//아이디 중복검사
	public boolean checkId(String id) {
		return (Integer)sqlsession.selectOne("Member.checkId", id) == 0;
	}
	
	/**
	 * datas{id='id', pw='pw'}
	 * @param 
	 * @return
	 */
	//로그인
	public boolean login(HashMap<String, String> datas) {
		return (Integer)sqlsession.selectOne("Member.login", datas) == 1;
	}
	
	//회원가입
	public boolean join(MemberVO member) {
	      return sqlsession.insert("Member.join", member) == 1;
	   }
	
	//회원 조회(회원 번호)
	public MemberVO search(int num) {
		return sqlsession.selectOne("Member.search", num);
	}
	
	//회원 번호 조회(아이디)
	public int searchNum(String id) {
		return sqlsession.selectOne("Member.searchNum", id);
	}
	
	//비밀번호 조회(아이디)
	public String searchPw(String id) {
		return sqlsession.selectOne("Member.searchPw", id);
	}
	
	//아이디 조회(회원 번호)
	public String searchId(int num) {
		return sqlsession.selectOne("Member.searchId", num);
	}
}
