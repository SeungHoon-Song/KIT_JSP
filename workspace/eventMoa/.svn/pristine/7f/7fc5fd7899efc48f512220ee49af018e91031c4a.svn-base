<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
-->
<html>
<head>
<title>내가 쓴 댓글 | 이벤트 모아(Event Moa)</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="author" content="corner3499">
<!-- title Icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/title-icon.png">
<style>
.column{
 			padding: 45px !important;
 		}
.fa-search {
	width: 20%;
}

@media screen and (max-width: 670px) {
	#category {
		display: none;
		padding-left: 10%;
	}
}
.td_article{
	display: flex;
}
.td_date{
	text-align: center;
}
</style>
</head>

<body class="is-preload">
	  <c:set var="list" value="${replyList}"/>
      <c:set var="totalCnt" value="${totalCnt}"/>
      <c:set var="startPage" value="${startPage}"/>
      <c:set var="endPage" value="${endPage}"/>
      <c:set var="nowPage" value="${nowPage}"/>
      <c:set var="realEndPage" value="${realEndPage}"/>
	<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
     </c:if>
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		<section id="banner">
			<article class="column col4">
				<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">내가 쓴 댓글</h1>
				<p class="col_desc"> </p>
		
						<form method="post" action="#" class="combined" style="margin-bottom: 0;">
		         			<select name="category" class="button primary icon solid fa-search" id="category" style="font-size: 10px; width: 13%; padding-left: 10px; text-align-last: center;
  									 text-align: center; -ms-text-align-last: center; -moz-text-align-last: center;">
			         				<option value="recent" id="selectRecent">이벤트　</option>
			         				<option value="view" id="selectView">자유게시판　</option>
			         				<option value="likes" id="selectLikes">인증후기　</option>
			         			</select>
			         			<div style="float:right; font-size: 11px;">
				         			<p>등록된 글 개수 : <c:out value="${totalCnt}"/>개</p>
								</div>
								<br>
								 
	         			</form>
	         			<p></p>
	         			<table border="1" cellpadding="0" cellspacing="0" width="900px">
	         			<thead>
										<tr>
											<th style="text-align: center;">게시글 번호</th>
											<th style="text-align: center;">댓글</th>
											<th style="text-align: center;">날짜</th>
										</tr>
									</thead>
               <c:choose>
               <c:when test="${list != null and fn:length(list) > 0}">
	               <c:forEach var="b_bean" items="${list}">
	               	<tr align="center" valign="middle" onmouseover="this.style.backgroudColor='F8F8F8'" onmouseout="this.style.backgroundColor='FFFFFF'">
	               		<td height="23" style="font-family:Tahoma; font-size:10pt; width: 12%;">
	               			${b_bean.getBoard_Num()}
	               		</td>
	               		<td style="font-family:Tahoma; font-size:10pt;">
	               			<div align="left">
	               				<a href="${pageContext.request.contextPath}/freeboard/FreeBoardView.bo?board_Num=${b_bean.getBoard_Num()}&page=${nowPage}">
	               					${b_bean.getReply_Content()}
	               				</a>
	               			</div>
	               		</td>
	               		<td>
	               			<div align="center">
	               				${b_bean.getReply_Date()}
	               			</div>
	               		</td>
	               	</tr>
	               </c:forEach>
	           </c:when>
	           <c:otherwise>
	           	<tr>
	           		<td colspan="3" align="center">등록된 댓글이 없습니다.</td>
	           	</tr>
	           </c:otherwise>
               </c:choose>
         </table>
         <div id="two" style="text-align: center; vertical-align: middle; ">
         			<c:if test="${nowPage >1}">
         				<a href="${pageContext.request.contextPath}/user/mypage/UserFreeBoardReplyListOk.us?page=${nowPage - 1}">&lt;이전</a>
         			</c:if>
	         		<c:forEach var="i" begin="${startPage}" end="${endPage}">
	         			<c:choose>
	         				<c:when test="${i eq nowPage}">
	         				<a style="border: solid 1px;border-color: darkgray; background-color: #fff; color: #72bee1; margin: 0 2px; padding-left: 4px;">${i}&nbsp;</a>
	         				</c:when>
	         				<c:otherwise>
	         					<a href="${pageContext.request.contextPath}/user/mypage/UserFreeBoardReplyListOk.us?page=${i}" style="margin: 0 2px;">${i}&nbsp;</a>
	         				</c:otherwise>
	         			</c:choose>
	         		</c:forEach>
         			<c:if test="${realEndPage != nowPage}">
         				<a href="${pageContext.request.contextPath}/user/mypage/UserFreeBoardReplyListOk.us?page=${nowPage + 1}">다음&gt;</a>
         			</c:if>
         			<br>        
		</div>
			</article>
						</section>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
</html>