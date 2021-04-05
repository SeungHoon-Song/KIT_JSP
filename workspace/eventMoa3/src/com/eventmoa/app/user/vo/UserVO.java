package com.eventmoa.app.user.vo;

/*user_Id varchar2(100) not null,
user_Pw varchar2(100) not null,
user_Name  varchar2(100), 
user_Email varchar2(200) not null,
user_Email_Hash varchar2(200),
user_Zipcode    varchar2(20) not null,
user_Address    varchar2(300)not null,
user_Address_DETAIL varchar2(300),
user_Address_Etc  varchar2(100),
user_Point NUMBER(10) NULL, -- 일단 NULL*/

public class UserVO {
	private String user_Id;
	private String user_Pw;
	private String user_Name;
	private String user_Email;
	private String user_Email_Hash;
	private String user_Zipcode;
	private String user_Address;
	private String user_Address_DETAIL;
	private String user_Address_Etc;
	private int user_Point;
	
	public UserVO() {;}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Pw() {
		return user_Pw;
	}

	public void setUser_Pw(String user_Pw) {
		this.user_Pw = user_Pw;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

	public String getUser_Email_Hash() {
		return user_Email_Hash;
	}

	public void setUser_Email_Hash(String user_Email_Hash) {
		this.user_Email_Hash = user_Email_Hash;
	}

	public String getUser_Zipcode() {
		return user_Zipcode;
	}

	public void setUser_Zipcode(String user_Zipcode) {
		this.user_Zipcode = user_Zipcode;
	}

	public String getUser_Address() {
		return user_Address;
	}

	public void setUser_Address(String user_Address) {
		this.user_Address = user_Address;
	}

	public String getUser_Address_DETAIL() {
		return user_Address_DETAIL;
	}

	public void setUser_Address_DETAIL(String user_Address_DETAIL) {
		this.user_Address_DETAIL = user_Address_DETAIL;
	}

	public String getUser_Address_Etc() {
		return user_Address_Etc;
	}

	public void setUser_Address_Etc(String user_Address_Etc) {
		this.user_Address_Etc = user_Address_Etc;
	}

	public int getUser_Point() {
		return user_Point;
	}

	public void setUser_Point(int user_Point) {
		this.user_Point = user_Point;
	}
	
	
}
