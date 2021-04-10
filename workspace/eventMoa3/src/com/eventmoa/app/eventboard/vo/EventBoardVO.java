package com.eventmoa.app.eventboard.vo;

/*BOARD_NUM NUMBER(10), -- 게시글 번호?
	BOARD_TITLE varchar2(50), -- 제목
	BOARD_CONTENT varchar2(3000), -- 내용 
	BOARD_ID varchar2(100), -- 닉네임/ID
	BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
	BOARD_DATE DATE, -- 게시물 날짜
	BOARD_LOCATION VARCHAR2(50), -- 지역*/

public class EventBoardVO {
	private int board_Num;
	private String board_Title;
	private String board_Content;
	private String board_Id;
	private int board_View;
	private String board_Date;
	private String board_Location;
	private String file_name;
		
	
	public EventBoardVO() {;}

	public int getBoard_Num() {
		return board_Num;
	}

	public void setBoard_Num(int board_Num) {
		this.board_Num = board_Num;
	}

	public String getBoard_Title() {
		return board_Title;
	}

	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}

	public String getBoard_Content() {
		return board_Content;
	}

	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}

	public String getBoard_Id() {
		return board_Id;
	}

	public void setBoard_Id(String board_Id) {
		this.board_Id = board_Id;
	}

	public int getBoard_View() {
		return board_View;
	}

	public void setBoard_View(int board_View) {
		this.board_View = board_View;
	}

	public String getBoard_Date() {
		return board_Date;
	}

	public void setBoard_Date(String board_Date) {
		this.board_Date = board_Date;
	}

	public String getBoard_Location() {
		return board_Location;
	}

	public void setBoard_Location(String board_Location) {
		this.board_Location = board_Location;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
}
