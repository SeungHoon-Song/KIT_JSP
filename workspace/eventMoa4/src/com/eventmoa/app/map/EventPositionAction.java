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

public class EventPositionAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		MapDAO m_dao = new MapDAO();
		PrintWriter out = resp.getWriter();
		
		JSONArray eventArray = new JSONArray();
		
		List<MapBoardVO> eventPositions = m_dao.getEventAddresses();
		HttpSession  session = req.getSession();
		
		String address = m_dao.getUserAddress((String)session.getAttribute("session_id"));
		JSONObject event = new JSONObject();
		event.put("eventTitle", "우리 집");
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

