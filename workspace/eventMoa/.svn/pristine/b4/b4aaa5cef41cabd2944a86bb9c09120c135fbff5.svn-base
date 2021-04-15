package com.eventmoa.app.eventboard;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFilesDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddImgOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception { 
		EventBoardVO ev_vo = new EventBoardVO();
		EventDAO ev_dao = new EventDAO();
		EventFilesDAO evf_dao = new EventFilesDAO();
		ActionForward forward = null;
		
		// 업로드
		String uploadFolder = "/app/eventFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		int fileSize = 1024 * 1024 * 50; // 10M
		
		MultipartRequest multi = null;
		
		
		try {
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ev_vo.setFile_name(multi.getFilesystemName("input_imgs_0"));
		
		if(evf_dao.insertFiles(ev_dao.getBoardNum(), multi)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			
		}
		
		return forward;

	}

}
