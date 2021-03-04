<%@page import="java.util.ArrayList"%>
<%@page import="com.koreait.beans.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.koreait.beans.MemberVO" id="member"/>
<jsp:useBean class="com.koreait.beans.MemberDAO" id="dao"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈 예제</title>
</head>
<body>
	<%-- <jsp:setProperty property="name" name="member" value="한동석"/>
	<jsp:setProperty property="birthday" name="member" value="12-04"/> --%>

	<!-- HTML 주석은 컴파일을 막지 않고 보여지는 부분만 주석처리해준다. -->
	<%-- JSP 주석은 컴파일도 주석처리 된다. --%>
	
	<jsp:getProperty property="name" name="member"/>
	<jsp:getProperty property="birthday" name="member"/>
	
	<table>
	<%ArrayList<MemberVO> members = dao.select("홍길동"); %>
	<%for(int i=0;i<members.size();i++){%>
		<tr>
			<td><%=members.get(i).getName()%></td>
			<td><%=members.get(i).getBirthday()%></td>
		</tr>
	<%}%>
	</table>
	
</body>
</html>