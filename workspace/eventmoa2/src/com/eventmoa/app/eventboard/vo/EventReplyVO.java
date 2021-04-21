package com.eventmoa.app.eventboard.vo;

/*REPLY_NUM NUMBER(10),
   BOARD_NUM NUMBER(10),
   user_Id varchar2(100),
   REPLY_CONTENT varchar2(4000),*/

public class EventReplyVO {
	private int reply_Num;
	private int board_Num;
	private String user_Id;
	private String reply_Content;
	private String reply_Date;
	private String reply_Star;
	private String board_Category;
	
	
	public EventReplyVO() {;}

	public int getReply_Num() {
		return reply_Num;
	}

	public void setReply_Num(int reply_Num) {
		this.reply_Num = reply_Num;
	}

	public int getBoard_Num() {
		return board_Num;
	}

	public void setBoard_Num(int board_Num) {
		this.board_Num = board_Num;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getReply_Content() {
		return reply_Content;
	}

	public void setReply_Content(String reply_Content) {
		this.reply_Content = reply_Content;
	}

	public String getReply_Date() {
		return reply_Date;
	}

	public void setReply_Date(String reply_Date) {
		this.reply_Date = reply_Date;
	}

	public String getReply_Star() {
		return reply_Star;
	}

	public void setReply_Star(String reply_Star) {
		this.reply_Star = reply_Star;
	}

	public String getBoard_Category() {
		return board_Category;
	}

	public void setBoard_Category(String board_Category) {
		this.board_Category = board_Category;
	}
	
	
}