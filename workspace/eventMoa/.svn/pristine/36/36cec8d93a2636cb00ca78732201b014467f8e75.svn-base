package com.eventmoa.app.map;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.map.dao.MapDAO;
import com.eventmoa.app.map.vo.MapBoardVO;

public class EventBoardPositionAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		MapDAO m_dao = new MapDAO();
		PrintWriter out = resp.getWriter();
		
		HttpSession session = req.getSession();
		
		List<MapBoardVO> eventPositions = m_dao.getEventAddresses();
		JSONArray eventArray = new JSONArray();
		
		String board_Num = req.getParameter("board_Num");
//		String board_Num = (String)session.getAttribute("board_Num");
		int ib_num = Integer.parseInt(board_Num);
		String address = m_dao.getEventboardAddress(ib_num);
		
		JSONObject event = new JSONObject();
		event.put("eventTitle", "현재 이벤트 스팟");
		event.put("eventAddress", address);
		eventArray.add(event);
		
		for(MapBoardVO mb_vo : eventPositions) {
			event = new JSONObject();
			event.put("eventTitle", mb_vo.getBoard_title());
			event.put("eventAddress", mb_vo.toString());
			eventArray.add(event);
		}
		out.println(eventArray.toJSONString());
		out.close();
		
		return null;
	}
	
}

