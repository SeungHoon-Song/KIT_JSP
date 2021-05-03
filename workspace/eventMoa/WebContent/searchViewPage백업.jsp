<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "[http://www.w3.org/TR/html4/loose.dtd](http://www.w3.org/TR/html4/loose.dtd)">
<!--
전체 검색 view 페이지 입니다.
-->
<html>
<head>
<title>이벤트 모아 (Event Moa)</title>
<meta charset="utf-8" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="author" content="corner3499">
<!-- title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
</head>
<body class="is-preload">

  <c:set var="eventList" value="${EventBoardList}"/>
  
  <c:set var="totalCnt" value="${totalCnt}"/>
  <c:set var="startPage" value="${startPage}"/>
  <c:set var="endPage" value="${endPage}"/>
  <c:set var="nowPage" value="${nowPage}"/>
  <c:set var="realEndPage" value="${realEndPage}"/>
  <c:set var="keyword" value="${keyword}"/>
  <c:set var="category" value="${category}"/>
	<!-- Header -->
	<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
	<!-- Main -->
	<div id="main">

		<!-- Logo & SearchBar-->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
		<!-- //검색 게시판 -->

		<section id="banner">
			<article class="column col4">
				<article class="column col5">
					<h4 class="col_tit" id="category">
					지역 -
					<c:if test="${category ne null}">
						"${category}"
					</c:if>
					전체 검색 결과
					</h4>
					<c:if test="${category ne null}">
						<p class="col_desc"> "${category}"를 포함한 내용 결과 입니다.</p>
					</c:if>
				</article>
					<table>
						<tbody>
							<tr>
								<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
									검색하신 "
									<b><font color="f75151">${keyword eq null ? category:keyword}</font></b>
									"에 대한 검색 결과가 입니다.
								 </td>
							 </tr>
						 </tbody>
					 </table>
					 <table class="alt">
						<thead>
							<tr>
								<th>글 번호</th>
								<th style="text-align: center;">제목</th>
								<th>아이디</th>
								<th>조회수</th>
								<th>날짜</th>
							</tr>
						</thead>
							<tbody id="boardList">
								<c:choose>
								<c:when test="${eventList != null and fn:length(eventList) > 0}">
									<c:forEach var="e_bean" items="${eventList}">
								<tr>
								<td>
								${e_bean.getBoard_Num()}
								</td>
										<td>
									<a href="${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num=${e_bean.getBoard_Num()}&page=${nowPage}">
										${e_bean.getBoard_Title()}
									</a>
										</td>
									<td>${e_bean.getBoard_Id()}</td>
									<td>${e_bean.getBoard_View()}</td>
									<td>${e_bean.getBoard_Date()}</td>
								</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
						           	<tr>
						           		<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
						           	</tr>
					           </c:otherwise>
								</c:choose>
							</tbody>
						</table>
					<div style="margin-bottom: 20%;">
						<select name="category" class="button primary icon solid fa-search" id="category"
						style="font-size: 10px; width: 15%;">
						<option value="recent" ${category == 'recent' ? 'selected' : ""}>등록일순　</option>
						<option value="view" ${category == 'view' ? 'selected' : ""}>조회순　</option>
						</select>
					</div>
					<div class="table-wrapper">

						<div id="two" style="text-align: center; vertical-align: middle; margin-bottom: 20%;">
							<c:if test="${nowPage >1}">
								<a href="${pageContext.request.contextPath}/search/search.us?page=${nowPage - 1}">&lt;이전</a>
							</c:if>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i eq nowPage}">
									<a style="border: solid 1px;border-color: darkgray; background-color: #fff; color: #72bee1; margin: 0 2px; padding-left: 4px;">${i}&nbsp;</a>
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/search/search.us?page=${i}" style="margin: 0 2px;">${i}&nbsp;</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
								<c:if test="${realEndPage != nowPage}">
									<a href="${pageContext.request.contextPath}/search/search.us?page=${nowPage + 1}">다음&gt;</a>
								</c:if>
							<br>
						</div>
					<hr>
									
					</div>
			</article>
		</section>

		<article class="column col6">
			<h4 class="col_tit">"이벤트"와 관련된 검색 결과 입니다.</h4>
			<table>
				<tbody>
					<tr>
						<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
							검색하신 "
							<b><font color="f75151">${category} - ${keyword}</font></b>
							"에 대한 검색 결과가 입니다.
						 </td>
					 </tr>
				 </tbody>
			 </table>
		</article>
		<div id="EVT">
		
		</div>
		<div align="center">
		<a href="#" id="btn_open" class="button" style="margin: 0 auto; margin-top: 5%;"> 이벤트 더보기</a>				
		</div>

		<hr>
		</div> <!-- div id="main" end -->

	<!-- Footer -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

</body>
<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script>
	var page=1;
	var cnt = 0;
	var ul = $("#EVT");
	var keyword = "<c:out value='${keyword}'/>";
	var category = "<c:out value='${category}'/>";
	function getList(){
		 var check=false;
		 var content = "";
		 $.ajax({
			 url:"${pageContext.request.contextPath}/search/searchEvent.us",
			 dataType:"text",
 			 data:{"page":page, "keyword":keyword,"category":category},
			 /* data:{"page":page}, */
			 contentType: "application/json",
			 success: function(list){
				 var eventArray=JSON.parse(list);
				 if(JSON.parse(list).length==0){
					/* content += "<table><tbody><tr>";
					content += "<td colspan='6' align='center'>등록된 게시물이 없습니다.</td>";
					content += "</tr></tboydy></table>";
					$("#EVT").html(content);  */
					alert('더 이상 등록된 게시물이 존재하지 않습니다.');
 					 check=true;
				 } else { 
					 for(let i=0; i<eventArray.length;i++){
					 	var content1 = eventArray[i].board_Content.substr(0,23);
						 content+="<section id='two' class='wrapper style1 spotlight alt' style='background-color: white; color: black;'>";
						 content+="<div class='content'>";
						 content+="<div class='inner'>";
						 content+="<h2 style='color: #453f3f; font-size: 20px; font-family: jua;'>"+eventArray[i].board_Title+"</h2>";
						 content+="<pre>"+content1+" •••. </pre>";
						 content+="<br> <i class='fas fa-map-marked-alt'></i><font style='font-weight: bold;'>스팟</font> ";
						 content+="<br>"+eventArray[i].board_Address+"/"+eventArray[i].board_Address_Detail+"";
						 content+="<ul class='actions'><li><a href='${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num="+eventArray[i].board_Num+"&page="+page+"' class='button' style='background-color: black;'>";
						 content+="자세히 보기</a></li></ul></div></div>";
						 content+="<div class='image'>";
						 content+="<img src='${pageContext.request.contextPath}/uploadFolder/eventFilesUpload/"+eventArray[i].file_name+"'onerror='noimage(this)'>";
						 content+="</div></section>";
					 }
				 }
				 
				 ul.append(content);
			 }	
		 });
		 if(check){
			 return;
		 }
		 page+=1;
	 }
	 getList();
	 $("#btn_open").on("click",function(e){
		 //a테크 이동 막기
		 e.preventDefault();
		 getList();
	 });
	 
</script>

 </html>