package com.koreait.app.member.vo;

public class MemberVO {
	/*CREATE TABLE FRONT_MEMBER(
			memberEmail VARCHAR2(300),
			memberPw VARCHAR2(300),
			memberName VARCHAR2(300),
			memberPhoneNumber VARCHAR2(300),
			CONSTRAINT FM_PK PRIMARY KEY(memberEmail)
		);*/
	
	public MemberVO() {;}
	private String memberEmail;
	private String memberPw;
	private String memberName;
	private String memberPhoneNumber;
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}
	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}
}
