package com.eventmoa.app.freeboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.dao.FreeboardFilesDAO;
import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.eventmoa.app.freeboard.vo.FreeFilesVO;

public class FreeBoardViewAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		FreeBoardDAO f_dao = new FreeBoardDAO();
		FreeBoardDAO r_dao = new FreeBoardDAO();
		FreeBoardVO f_vo = null;
		FreeboardFilesDAO ff_dao = new FreeboardFilesDAO();
		
		ActionForward forward = null;
		int board_Num = Integer.parseInt(req.getParameter("board_Num").trim());
		int page = Integer.parseInt(req.getParameter("page"));
		f_vo = f_dao.getDetail(board_Num);
		
		List<FreeFilesVO> fileList = ff_dao.getFileList(board_Num);
		//List<BoardReplyVO> replyList = r_dao.getReplyList(boardNum); 댓글 수정
		
		if(f_vo != null) {
			f_dao.updateBoardView(board_Num);
			//req.setAttribute("replies", replyList); 댓글 수정
			req.setAttribute("f_vo", f_vo);
			req.setAttribute("page", page);
			if(fileList != null) {
				req.setAttribute("files", fileList);
			}
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/community/freeTalkView.jsp");
		}
		
		
		return forward;
	}
}
