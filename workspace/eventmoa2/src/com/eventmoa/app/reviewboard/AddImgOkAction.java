package com.eventmoa.app.reviewboard;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewFilesDAO;
import com.eventmoa.app.reviewboard.vo.ReviewBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddImgOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ReviewBoardVO r_vo = new ReviewBoardVO();
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ReviewFilesDAO rf_dao = new ReviewFilesDAO();
		ActionForward forward = null;
		
		String uploadFolder = "/app/reviewFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		int fileSize = 1024 * 1024 * 50; // 10M
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(rf_dao.insertFiles(r_dao.getBoardNum(), multi)) {
			forward = new ActionForward();
			forward.setRedirect(true);
		}
		
		
		return forward;
	}
}
