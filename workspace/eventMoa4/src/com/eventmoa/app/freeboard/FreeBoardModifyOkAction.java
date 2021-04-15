package com.eventmoa.app.freeboard;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.freeboard.dao.FreeboardFilesDAO;
import com.eventmoa.app.freeboard.vo.FreeBoardVO;
import com.eventmoa.app.freeboard.vo.FreeFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FreeBoardModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		FreeBoardDAO f_dao = new FreeBoardDAO();
		FreeboardFilesDAO ff_dao = new FreeboardFilesDAO();
		
		MultipartRequest multi = null;
		
		String uploadFolder = "/app/upload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		//String saveFolder = "C:\\0900_gb_ssh\\jsp\\workspace\\eventMoa\\WebContent\\app\\upload";
		int fileSize = 5 * 1024 * 1024;
		
		try {
			FreeBoardVO f_vo = new FreeBoardVO();
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			int page = Integer.parseInt(multi.getParameter("page"));
			int board_Num = Integer.parseInt(multi.getParameter("board_Num"));
			
			//업로드 경로 파일 삭제
			for(FreeFilesVO file : ff_dao.getFileList(board_Num)) {
				File f = new File(realPath, file.getFile_Name());
				if(f.exists()) {
					f.delete();
				}
			}
			
			//DB 삭제
			ff_dao.deleteFile(board_Num);
			
			//새롭게 추가한 첨부파일 DB에 추가
			ff_dao.insertFiles(board_Num, multi);
			
			f_vo.setBoard_Num(board_Num);
			f_vo.setBoard_Title(multi.getParameter("board_Title"));
			f_vo.setBoard_Content(multi.getParameter("board_Content"));
			
			f_dao.updateBoard(f_vo);
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/freeboard/FreeBoardView.bo?board_Num=" + f_vo.getBoard_Num() + "&page=" + page);
		} catch (Exception e) {
			PrintWriter out = resp.getWriter();
			resp.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('게시글 수정 실패. 다시 시도해주세요.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		
		return forward;
	}
}
