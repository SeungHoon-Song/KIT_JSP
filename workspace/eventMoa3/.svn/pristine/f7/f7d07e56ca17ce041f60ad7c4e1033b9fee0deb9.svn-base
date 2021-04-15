package com.eventmoa.app.freeboard.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.freeboard.vo.FreeFilesVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class FreeboardFilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public FreeboardFilesDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean insertFiles(int board_Num, MultipartRequest multi) {
		boolean check = true;
		FreeFilesVO vo = new FreeFilesVO();
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String data = files.nextElement();
			//사용자가 업로드한 파일명을 통해서 중복이 없도록 변경된 시스템 파일명을 가져온다.
			String systemName = multi.getFilesystemName(data);
			if(systemName == null) {continue;}
			
			vo.setFile_Name(systemName);
			vo.setBoard_Num(board_Num);
			
			if(session.insert("FreeBoardFiles.insertFile", vo) != 1) {
				check = false;
				break;
			}
		}
		return check;
	}
	
	public List<FreeFilesVO> getFileList(int board_Num){
		return session.selectList("FreeBoardFiles.getFileList", board_Num);
	}
	public void deleteFile(int board_Num) {
		session.delete("FreeBoardFiles.deleteFile", board_Num);
	}
	
}
