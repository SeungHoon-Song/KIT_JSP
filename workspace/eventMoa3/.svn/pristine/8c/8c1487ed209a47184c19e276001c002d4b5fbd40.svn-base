package com.eventmoa.app.eventboard;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFilesDAO;

public class EventBoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		EventDAO e_dao = new EventDAO();
		EventFilesDAO ef_dao = new EventFilesDAO();
		ActionForward forward = new ActionForward();
		
		String uploadFolder = "/app/eventFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
//		for(FreeFilesVO file : ef_dao.getFileList(board_Num)) {
//			File f = new File(realPath, file.getFile_Name());
//			if(f.exists()) {
//				f.delete();
//			}
//		}
//		
//		ef_dao.deleteFile(board_Num);
//		e_dao.deleteBoard(board_Num);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/eventboard/EventList.ev");
		
		return forward;
	}
}
