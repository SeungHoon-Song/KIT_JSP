package com.eventmoa.app.eventboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFilesDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.eventmoa.app.eventboard.vo.EventFilesVO;
import com.eventmoa.app.eventboard.vo.EventReplyVO;

public class EventBoardViewOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		EventDAO e_dao =new EventDAO();
		EventDAO reply_dao =new EventDAO();
		EventBoardVO e_vo = null;
		
		EventFilesDAO ef_dao = new EventFilesDAO();
		ActionForward forward = null;
		
		int boardNum =Integer.parseInt(req.getParameter("board_Num").trim());
		int page = Integer.parseInt(req.getParameter("page"));
		
		e_vo = e_dao.getDetail(boardNum);
		
		List<EventFilesVO> filesList = ef_dao.getFileList(boardNum);
		List<EventReplyVO> replyList =  reply_dao.getReplyList(boardNum);
		
		
		if(e_vo != null ) {
			e_dao.updateReadCount(boardNum); // 조회수
			req.setAttribute("replies", replyList);
			req.setAttribute("e_vo", e_vo);
			req.setAttribute("page", page);
			
			if(filesList != null) {
				req.setAttribute("files", filesList);
			}
			
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/Event/eventView.jsp");
		}
		
		return forward;
	}

	
	
	
}
