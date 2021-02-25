package com.koreait.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TABLE_MEMBER_DAO {
	//커넥터
	Connection conn;
	//pstm
	PreparedStatement pstm;
	//result set
	ResultSet rs;
	TABLE_MEMBER_VO member;
	/**
	 * 
	 * @param id
	 * @return
	 * 중복이면 true, 중복이 없으면 false
	 */
	
	//1. 아이디 중복검사
	public boolean checkId(String id){
		String query = "SELECT COUNT(*) FROM TABLE_MEMBER WHERE ID = ?";
		boolean check = false;
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, id);
			rs = pstm.executeQuery();
			
			rs.next();
			
			if(rs.getInt(1) == 1) {
				check = true;
			}
			
		} catch (SQLException e) {
			System.out.println("checkId(String) 쿼리 오류" + e.getMessage());
		} catch (Exception e) {
			System.out.println("checkId(String) 오류" + e.getMessage());
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}if(pstm != null) {
					pstm.close();
				}if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return check;
	}
	
	//2. 회원가입
		public boolean checkJoin(TABLE_MEMBER_VO member){
			String query = "INSERT INTO TABLE_MEMBER VALUES(MEM_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?)";
			boolean check = false;
			int i = 0;
			
			try {
				conn = DBConnection.getConnection();
				pstm = conn.prepareStatement(query);
				pstm.setString(1, member.getId());
				pstm.setString(2, member.getName());
				pstm.setString(3, member.getPassword());
				pstm.setString(4, member.getGender());
				pstm.setString(5, member.getZipcode());
				pstm.setString(6, member.getAddress());
				pstm.setString(7, member.getAddressDetail());
				pstm.setString(8, member.getAddressEtc());
				i = pstm.executeUpdate();
				if(i == 1) {
					check = true;
				}
				
				
			} catch (SQLException e) {
				System.out.println("checkId(String) 쿼리 오류" + e.getMessage());
			} catch (Exception e) {
				System.out.println("checkId(String) 오류" + e.getMessage());
			} finally {
				try {
					if(pstm != null) {
						pstm.close();
					}if(conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					throw new RuntimeException(e.getMessage());
				}
			}
			return check;
		}
	
}
