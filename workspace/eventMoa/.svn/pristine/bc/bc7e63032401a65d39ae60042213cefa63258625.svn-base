<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--

-->
<html>
	<head>
		<title>자유게시판 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
 
		</style>
	</head>
	
	<body class="is-preload">
	  <c:set var="list" value="${boardList}"/>
      <c:set var="totalCnt" value="${totalCnt}"/>
      <c:set var="startPage" value="${startPage}"/>
      <c:set var="endPage" value="${endPage}"/>
      <c:set var="nowPage" value="${nowPage}"/>
      <c:set var="realEndPage" value="${realEndPage}"/>
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		
		
		<!-- FreeTalk -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: left;">자유게시판 : 욕설과 비속어는 자제해주세요 :D</h2>
				<p class="col_desc"> </p>
		
						<form method="post" action="#" class="combined" style="margin-bottom: 0;">
		         			<select name="category" class="button primary icon solid fa-search" id="category" 
		         			style="font-size: 10px; width: 13%; padding: 0; text-align-last: center;
   text-align: center;
   -ms-text-align-last: center;
   -moz-text-align-last: center;">
			         				<option value="recent">등록일순</option>
			         				<option value="view">조회순</option>
			         				<option value="likes">추천순</option>
			         			</select>
			         			<div style="float:right; font-size: 11px;">
				         			<p>등록된 글 개수 : <c:out value="${totalCnt}"/>개</p>
								</div>
								<br>
								 
	         			</form>
	         			<p></p>
	         			
	         			<table border="1" cellpadding="0" cellspacing="0" width="900px" >
	         			<thead>
										<tr>
											<th>게시글 번호</th>
											<th style="text-align: center;">제목</th>
											<th>닉네임</th>
											<th>날짜</th>
											<th>조회수</th>
											<th>추천</th>
										</tr>
									</thead>
               <c:choose>
               <c:when test="${list != null and fn:length(list) > 0}">
	               <c:forEach var="b_bean" items="${list}">
	               	<tr align="center" valign="middle" onmouseover="this.style.backgroudColor='F8F8F8'" onmouseout="this.style.backgroundColor='FFFFFF'">
	               		<td height="23" style="font-family:Tahoma; font-size:10pt;">
	               			${b_bean.getBoard_Num()}
	               		</td>
	               		<td style="font-family:Tahoma; font-size:10pt;">
	               			<div align="left">
	               				<a href="${pageContext.request.contextPath}/freeboard/FreeBoardView.bo?boardNum=${b_bean.getBoardNum()}&page=${nowPage}">
	               					${b_bean.getBoard_Title()}
	               				</a>
	               			</div>
	               		</td>
	               		<td>
	               			<div align="center">
	               				${b_bean.getBoard_Id()}
	               			</div>
	               		</td>
	               		<td>
	               			<div align="center">
	               				${b_bean.getBoard_Date()}
	               			</div>
	               		</td>
	               		<td>
	               			<div align="center">
	               				${b_bean.getBoard_View()}
	               			</div>
	               		</td>
	               		<td>
	               			<div align="center">
	               				${b_bean.board_Likes()}
	               			</div>
	               		</td>
	               	</tr>
	               </c:forEach>
	           </c:when>
	           <c:otherwise>
	           	<tr>
	           		<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
	           	</tr>
	           </c:otherwise>
               </c:choose>
         </table>
         <br/>
         <table border="0" cellpadding="0" cellspacing="0" width="900px">
         	<tr align="center" valign="middle">
         		<td>
         			<c:if test="${nowPage >1}">
         				<a href="${pageContext.request.contextPath}/freeboard/FreeBoardList.bo?page=${nowPage - 1}">[이전]</a>
         			</c:if>
	         		<c:forEach var="i" begin="${startPage}" end="${endPage}">
	         			<c:choose>
	         				<c:when test="${i eq nowPage}">
	         					[${i}]&nbsp;
	         				</c:when>
	         				<c:otherwise>
	         					<a href="${pageContext.request.contextPath}/freeboard/FreeBoardList.bo?page=${i}">${i}&nbsp;</a>
	         				</c:otherwise>
	         			</c:choose>
	         		</c:forEach>
         			<c:if test="${realEndPage != nowPage}">
         				<a href="${pageContext.request.contextPath}/freeboard/FreeBoardList.bo?page=${nowPage + 1}">[다음]</a>
         			</c:if>
         		</td>
         	</tr>
         </table>
         <table border="0" cellpadding="0" cellspacing="0" width="900px">
            <tr align="right" valign="middle">
               <td><a href="${pageContext.request.contextPath}/freeboard/FreeBoardWrite.bo?page=${nowPage}">[글쓰기]</a></td>
            </tr>
         </table>
	         			
	         			
	         			
	         			
	         			
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>게시글 번호</th>
											<th style="text-align: center;">제목</th>
											<th>닉네임</th>
											<th>날짜</th>
											<th>조회수</th>
											<th>추천</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td style="width:10%;">5</td>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>17:43</td>
										</tr>
										<tr>
											<td>4</td>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>3</td>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>2</td>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>1</td>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
									</tbody>
								</table>
								
								
								<div id="two" style="text-align: center; vertical-align: middle; ">
		         					  <div class="button primary small" style="width: 15%;">
					         				<a href="${pageContext.request.contextPath}/">이전</a>
					         				</div>
				         				<div class="button primary small" style="width: 5%;">
					         					<!-- 페이지 수 --> 
					         					<a href="${pageContext.request.contextPath}/">1</a>
					               	</div>
			         					  <div class="button primary small" style="width: 15%;">
					         				<a href="${pageContext.request.contextPath}/">다음</a>
						               	</div>
					         		<!-- 로그인 했을 경우에만 글쓰기가 떠야함 -->
						               <div class="button primary small" style="float: right; width: 15%;">
						               		<a href="${pageContext.request.contextPath}/community/freeTalkWriter.jsp">글쓰기✍</a>
						               	</div>
								</div>
						         
							</div>
							
							</article>
						</section>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>