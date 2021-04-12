package com.eventmoa.app.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FreeBoardWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		FreeBoardVO f_vo = new FreeBoardVO();
		FreeBoardDAO f_dao = new FreeBoardDAO();
		//첨부파일 내용 추가
		ActionForward forward = null;
		
		//경로도 추후 설정
		String saveFolder = "C:\\0900_gb_ssh\\jsp\\workspace\\eventMoa\\WebContent\\app\\upload";
		int fileSize = 5 * 1024 * 1024; //5M
		
		MultipartRequest multi = null;
		
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		f_vo.setBoard_Title(multi.getParameter("board_Title"));
		f_vo.setBoard_Id(multi.getParameter("board_Id"));
		f_vo.setBoard_Content(multi.getParameter("board_Content"));
		
		if(f_dao.insertFreeBoard(f_vo)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/freeboard/FreeBoardList.bo");
		}
		
		return forward;
	}
}
