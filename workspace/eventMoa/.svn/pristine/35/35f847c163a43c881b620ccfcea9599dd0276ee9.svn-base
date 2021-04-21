package com.eventmoa.app.freeboard;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.dao.FreeboardFilesDAO;
import com.eventmoa.app.freeboard.vo.FreeFilesVO;

public class FreeBoardDeleteOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		FreeBoardDAO f_dao = new FreeBoardDAO();
		FreeboardFilesDAO ff_dao = new FreeboardFilesDAO();
		ActionForward forward = new ActionForward();
		
		String uploadFolder = "/app/upload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		//String saveFolder = "C:\\0900_gb_ssh\\jsp\\workspace\\eventMoa\\WebContent\\app\\upload";
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		for(FreeFilesVO file : ff_dao.getFileList(board_Num)) {
			File f = new File(realPath, file.getFile_Name());
			if(f.exists()) {
				f.delete();
			}
		}
		
		ff_dao.deleteFile(board_Num);
		f_dao.deleteBoard(board_Num);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/freeboard/FreeBoardList.bo?category=recent");
		
		return forward;
	}
}
