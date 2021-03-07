package com.koreait.app.member.vo;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.comfig.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MemberDAO() {
		//true 자동커밋
		session = sessionf.openSession(true);
	}
	
	//아이디 중복 검사
	/**
	 * 
	 * @param memberId
	 * @return
	 * true면 중복 false면 사용
	 */
	public boolean checkId(String memberId) {
		return (Integer)session.selectOne(memberId) == 1;
	}
	
}
