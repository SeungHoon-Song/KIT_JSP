package com.koreait.app.board.vo;

/*BOARDNUM NUMBER(10),
BOARDTITLE VARCHAR2(1000),
BOARDCONTENT VARCHAR2(3000),
BOARDEMAIL VARCHAR2(100),
BOARDDATE DATE,*/

public class BoardVO {
	private int boardNum;
	private String boardTitle;
	private String boardContent;
	private String boardEmail;
	private String boardDate;
	private int readCount;
	
	public BoardVO() {;}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardEmail() {
		return boardEmail;
	}

	public void setBoardEmail(String boardEmail) {
		this.boardEmail = boardEmail;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
	
}
