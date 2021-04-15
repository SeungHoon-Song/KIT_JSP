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
		
		//경로도 추후 설정
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
		System.out.println("작성 컨트롤러1");
		
		if(f_dao.insertBoard(f_vo)) {
			System.out.println("작성 컨트롤러2");
			if(ff_dao.insertFiles(f_dao.getBoardNum(), multi)) {
				System.out.println("작성 컨트롤러3");
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/freeboard/FreeBoardList.bo");
			}
		}
		
		return forward;
	}
}
