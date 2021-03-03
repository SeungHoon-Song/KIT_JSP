package com.koreait.dao;

import java.util.HashMap;

import com.koreait.vo.MemberVO;

public class Test {
   public static void main(String[] args) {
      MemberDAO dao = new MemberDAO();
      
/*      MemberVO member = dao.search(2);
      member.setName("홍길동");
      System.out.println(dao.modify(member));*/
      
      
//      	System.out.println(dao.searchPwNum(1));
      
      dao.searchList().forEach(member -> System.out.println(member));
      
//      System.out.println(dao.delete(2));
      
//      member.setId("user002");
//      member.setName("한동석");
//      member.setPassword("1234");
//      member.setGender("남자");
//      member.setAddress("역삼");
//      member.setAddressDetail("2동");
//      member.setAddressEtc("100호");
//      member.setZipcode("12345");
//      System.out.println(dao.join(member));
      
//      System.out.println(dao.checkId("hds1234"));
      
//      HashMap<String, String> datas = new HashMap<>();
//      datas.put("id", "ssh1");
//      datas.put("pw", "Thdtmdgns!23");
//      System.out.println(dao.login(datas));
      
//      System.out.println(dao.search(2));
      
//      System.out.println(dao.searchNum("ssh1"));
      
//      System.out.println(dao.searchPw("user002"));
      	
//      	System.out.println(dao.searchId(1));
      	
     
      
      
   }
}