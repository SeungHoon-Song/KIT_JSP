package com.eventmoa.app.reviewboard.vo;


/*FILE_NAME varchar2(2000),
BOARD_NUM NUMBER(10),*/

public class ReviewFilesVO {
	 private String file_Name;
	 private int board_Num;
	 
	 public ReviewFilesVO() {;}

	public String getFile_Name() {
		return file_Name;
	}

	public void setFile_Name(String file_Name) {
		this.file_Name = file_Name;
	}

	public int getBoard_Num() {
		return board_Num;
	}

	public void setBoard_Num(int board_Num) {
		this.board_Num = board_Num;
	}
	 
	 
}
