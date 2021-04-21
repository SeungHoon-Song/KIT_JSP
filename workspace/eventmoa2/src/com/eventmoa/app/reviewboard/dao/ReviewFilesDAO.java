package com.eventmoa.app.reviewboard.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.reviewboard.vo.ReviewFilesVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class ReviewFilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public ReviewFilesDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean insertFiles(int board_Num, MultipartRequest multi) {
		boolean check = true;
		ReviewFilesVO vo = new ReviewFilesVO();
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String data = files.nextElement();
			String systemName = multi.getFilesystemName(data);
			if(systemName == null) {
				continue;
			}
			
			vo.setFile_Name(systemName);
			vo.setBoard_Num(board_Num);
			
			if(session.insert("ReviewFiles.insertFile", vo) != 1) {
				check = false;
				break;
			}
		}
		return check;
	}
	
	public String getFileList(int board_Num){
		return session.selectOne("ReviewFiles.getFileList", board_Num);
	}
	public void deleteFile(int board_Num) {
		session.delete("ReviewFiles.deleteFile", board_Num);
	}
}
