package com.eventmoa.app.freeboard;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.dao.FreeboardFilesDAO;
import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FreeBoardWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		FreeBoardVO f_vo = new FreeBoardVO();
		FreeBoardDAO f_dao = new FreeBoardDAO();
		FreeboardFilesDAO ff_dao = new FreeboardFilesDAO();
		
		ActionForward forward = null;
		
		String uploadFolder = "/app/upload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		//String saveFolder = "C:\\0900_gb_ssh\\jsp\\workspace\\eventMoa\\WebContent\\app\\upload";
		int fileSize = 5 * 1024 * 1024; //5M
		
		MultipartRequest multi = null;
		
		multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		f_vo.setBoard_Title(multi.getParameter("board_Title"));
		f_vo.setBoard_Id(multi.getParameter("board_Id"));
		f_vo.setBoard_Content(multi.getParameter("board_Content"));
		
		if(f_dao.insertBoard(f_vo)) {
			if(ff_dao.insertFile(f_dao.getBoardNum(), multi)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/freeboard/FreeBoardList.bo");
			}
		}
		
		return forward;
	}
}
