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

<style>

div#two ul {
    border: 1px solid #525252;
    display: inline-block;
    padding: 0;
    border-left: 0;
}
div#two ul li {
    display: inline-block;
    border-left: 1px solid #525252;
}
h2 {
	text-align: center;
}
table th {
	text-align: center !important;
}
section#two {
    margin-top: 1%;
}
.content {
    border-color: black;
    border-right-style: solid;
    border-width: 1px;
    border-top-style: double;
    border-bottom-style: double;
    border-left-style: double;
    border-radius: 1%;
}
.image {
    border-color: black;
    border-width: 1px;
    border-top-style: double;
    border-bottom-style: double;
    border-left-style: double;
    border-radius: 1%;
}
</style>

</head>
<body class="is-preload">

  <c:set var="keyword" value="${keyword}"/>
  <c:set var="category" value="${category}"/>
  
  <c:set var="freeBoardList" value="${freeBoardList}"/>
	  <c:set var="totalCnt" value="${totalCnt}"/>
	  <c:set var="startPage" value="${startPage}"/>
	  <c:set var="endPage" value="${endPage}"/>
	  <c:set var="nowPage" value="${nowPage}"/>
	  <c:set var="realEndPage" value="${realEndPage}"/>
  
  <c:set var="reviewBoardList" value="${reviewBoardList}"/>
	  <c:set var="r_totalCnt" value="${r_totalCnt}"/>
	  <c:set var="r_startPage" value="${r_startPage}"/>
	  <c:set var="r_endPage" value="${r_endPage}"/>
	  <c:set var="r_nowPage" value="${r_nowPage}"/>
	  <c:set var="r_realEndPage" value="${r_realEndPage}"/>
	<!-- Header -->
	<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
	<!-- Main -->
	<div id="main">

		<!-- sideBar -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
			
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
									"에 대한 자유게시판 검색 결과 입니다.
								 </td>
							 </tr>
						 </tbody>
					 </table>
					 <h4 class="col_tit">자유게시판 관련 검색 결과 입니다.</h4>
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
							<tbody id="freeBoardList">
								<c:choose>
								 <c:when test="${freeBoardList != null and fn:length(freeBoardList) > 0}">
					               <c:forEach var="fb_bean" items="${freeBoardList}">
					               	<tr align="center" valign="middle" onmouseover="this.style.backgroudColor='F8F8F8'" onmouseout="this.style.backgroundColor='FFFFFF'">
					               		<td height="23">
					               			${fb_bean.getBoard_Num()}
					               		</td>
					               		<td style="font-family:Tahoma; font-size:10pt;">
					               			<div align="center">
					               			<c:if test="${fb_bean.getBoard_Category() == 'FREE'}">
					               				<a href="${pageContext.request.contextPath}/freeboard/FreeBoardView.bo?board_Num=${fb_bean.getBoard_Num()}&page=${nowPage}">
						               				<font style="font-weight: 1rem;">
							               				<c:set var = "board_title" value = "${fb_bean.getBoard_Title()}"/>
		   												<c:if test="${fn:length(board_title) <= 30}">
							               					${fb_bean.getBoard_Title()}
		   												</c:if>
		   												<c:if test="${fn:length(board_title) > 30}">
		   													<c:set var = "new_title" value = "${fn:substring(board_title, 0, 30)}" />
		   													${new_title}
		   												</c:if>
						               				</font>
					               				</a>
					               			</c:if>
					               			</div>
					               		</td>
					               		<td>
					               			<div align="center">
					               				<c:set var = "user_id" value = "${fb_bean.getBoard_Id()}"/>
				               				   <c:set var = "id_length" value = "${fn:length(user_id)}"/>
   												<c:set var = "private_id" value = "${fn:substring(user_id, 0, id_length-2)}" />
   												${private_id}**
					               			</div>
					               		</td>
					               		<td>
					               			<div align="center">
					               				${fb_bean.getBoard_View()}
					               			</div>
					               		</td>
					               		<td>
					               			<div align="center">
				               				  <c:set var = "date1" value = "${fb_bean.getBoard_Date()}"/>
										      <c:set var = "date2" value = "${fn:substring(date1, 5, 10)}" />
										      ${date2}
					               			</div>
					               		</td>
					               	</tr>
				             	  </c:forEach>
					           </c:when>
								<c:otherwise>
						           	<tr>
						           		<td colspan="6" align="center">더 이상 등록된 게시물이 없습니다.</td>
						           	</tr>
					           </c:otherwise>
								</c:choose>
							</tbody>
						</table>
					<div style=" position: relative;">
				 	<form method="post" action="#" class="combined" style="margin-bottom: 0;">
						<select name="category2" class="button primary icon solid fa-search" id="category2"
						style="font-size: 10px; width: 15%;">
							<option value="recent" ${category2 == 'recent' ? 'selected' : ""}>등록일순　</option>
							<option value="view" ${category2 == 'view' ? 'selected' : ""}>조회순　</option>
						</select>
						<div style="float:right; font-size: 11px;">
                              <p>등록된 글 개수 : <c:out value="${totalCnt}"/>개</p>
                        </div>
                    </form>
						<div id="two" style="text-align: center;">
						<ul>
							<c:if test="${nowPage >1}">
							<li>						
								<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${nowPage - 1}&category=${category}&keyword=${keyword}&r_page=${r_nowPage - 1}">&lt;이전</a>
							</li>
							</c:if>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i eq nowPage}">
								<li>
									<a style="border-color: darkgray; background-color: #fff; color: #72bee1; margin: 0 2px; padding-left: 4px;">${i}&nbsp;</a>
								</li>
									</c:when>
									<c:otherwise>
									<li>
										<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${i}&category=${category}&keyword=${keyword}&r_page=${i}" style="margin: 0 2px;">${i}&nbsp;</a>
									</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${realEndPage != nowPage}">
							<li>
								<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${nowPage + 1}&category=${category}&keyword=${keyword}&r_page=${r_nowPage + 1}">다음&gt;</a>
							</li>
							</c:if>
						</ul>
						</div>
					</div>
			</article>
			
			
			
			
		<article class="column col6">
			<table>
				<tbody>
					<tr>
						<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
							검색하신 "
							<b><font color="f75151">${keyword eq null ? category:keyword}</font></b>
							"에 대한 인증후기 검색 결과 입니다.
						 </td>
					 </tr>
				 </tbody>
			 </table>
			<h4 class="col_tit">인증후기 관련 검색 결과 입니다.</h4>
			<table class="alt">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>이벤트</th>
						<th style="text-align: center;">제목</th>
						<th>아이디</th>
						<th>조회수</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody id="reviewBoardList">
					 <c:choose>
					 <c:when test="${reviewBoardList != null and fn:length(reviewBoardList) > 0}">
		               <c:forEach var="rb_bean" items="${reviewBoardList}">
		               	<tr align="center" valign="middle" onmouseover="this.style.backgroudColor='F8F8F8'" onmouseout="this.style.backgroundColor='FFFFFF'">
		               		<td height="23">
		               			${rb_bean.getBoard_Num()}
		               		</td>
		               		<td>
		               		<a href="${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num=${rb_bean.getE_board_Num()}&page=1">
		               			<c:set var = "rE_board_title" value = "${rb_bean.getE_board_Title()}"/>
									<c:if test="${fn:length(rE_board_title) <= 30}">
									${rb_bean.getE_board_Title()}
									</c:if>
									<c:if test="${fn:length(rE_board_title) > 30}">
									<c:set var = "rE_new_title" value = "${fn:substring(rE_board_title, 0, 30)}" />
									${rE_new_title}
									</c:if>
		               		</a> 
		               		</td>
		               		<td style="font-family:Tahoma; font-size:10pt;">
		               			<div align="center">
		               				<a href="${pageContext.request.contextPath}/reviewboard/ReviewBoardView.rb?board_Num=${rb_bean.getBoard_Num()}&page=${r_nowPage}">
			               				<font style="font-weight: 1rem;">
				               				<c:set var = "r_board_title" value = "${rb_bean.getBoard_Title()}"/>
  												<c:if test="${fn:length(r_board_title) <= 30}">
				               					${rb_bean.getBoard_Title()}
  												</c:if>
  												<c:if test="${fn:length(r_board_title) > 30}">
  													<c:set var = "r_new_title" value = "${fn:substring(r_board_title, 0, 30)}" />
  													${r_new_title}
  												</c:if>
			               				</font>
		               				</a>
		               			</div>
		               		</td>
		               		<td>
		               			<div align="center">
		               				<c:set var = "r_user_id" value = "${rb_bean.getBoard_Id()}"/>
	               				   <c:set var = "r_id_length" value = "${fn:length(r_user_id)}"/>
												<c:set var = "r_private_id" value = "${fn:substring(r_user_id, 0, r_id_length-2)}" />
												${r_private_id}**
		               			</div>
		               		</td>
		               		<td>
		               			<div align="center">
		               				${rb_bean.getBoard_View()}
		               			</div>
		               		</td>
		               		<td>
		               			<div align="center">
	               				  <c:set var = "r_date1" value = "${rb_bean.getBoard_Date()}"/>
							      <c:set var = "r_date2" value = "${fn:substring(r_date1, 5, 10)}" />
							      ${r_date2}
		               			</div>
		               		</td>
	               		</tr>
	             	  </c:forEach>
		           </c:when>
					<c:otherwise>
			           	<tr>
			           		<td colspan="6" align="center">더 이상 등록된 게시물이 없습니다.</td>
			           	</tr>
		           </c:otherwise>
					</c:choose>
				 </tbody>
			 </table>
			 
		<form method="post" action="#" class="combined" style="margin-bottom: 0;">
			<select name="category3" class="button primary icon solid fa-search" id="category3"
			style="font-size: 10px; width: 15%;">
				<option value="recent" ${category3 == 'recent' ? 'selected' : ""}>등록일순　</option>
				<option value="view" ${category3 == 'view' ? 'selected' : ""}>조회순　</option>
			</select>
			<div style="float:right; font-size: 11px;">
                           <p>등록된 글 개수 : <c:out value="${r_totalCnt}"/>개</p>
                     </div>
                 </form>
			<div id="two" style="text-align: center;">
			<ul>
				<c:if test="${r_nowPage >1}">
				<li>						
					<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${nowPage - 1}&category=${category}&keyword=${keyword}&category3=${category3}&r_page=${r_nowPage - 1}">&lt;이전</a>
				</li>
				</c:if>
				<c:forEach var="r_i" begin="${r_startPage}" end="${r_endPage}">
					<c:choose>
						<c:when test="${r_i eq r_nowPage}">
					<li>
						<a style="border-color: darkgray; background-color: #fff; color: #72bee1; margin: 0 2px; padding-left: 4px;">${r_i}&nbsp;</a>
					</li>
						</c:when>
						<c:otherwise>
						<li>
							<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${i}&category=${category}&keyword=${keyword}&category3=${category3}&r_page=${r_i}" style="margin: 0 2px;">${r_i}&nbsp;</a>
						</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${r_realEndPage != r_nowPage}">
				<li>
					<a href="${pageContext.request.contextPath}/search/search.us?category2=${category2}&page=${nowPage + 1}&category=${category}&keyword=${keyword}&category3=${category3}&r_page=${r_nowPage + 1}">다음&gt;</a>
				</li>
				</c:if>
			</ul>
			</div>	 
		</article>
		
		</section>
		<hr>
	<section class="wrapper special">
		<article class="column col6">
			<h4 class="col_tit">이벤트 관련 검색 결과 입니다.</h4>
			<table>
				<tbody>
					<tr>
						<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
							검색하신 "
							<b><font color="f75151">${category} - ${keyword}</font></b>
							"에 대한 검색 결과 입니다.
						 </td>
					 </tr>
				 </tbody>
			 </table>
		<div id="EVT">
		
		</div>
		<a href="#" id="btn_open" class="button" style="margin: 0 auto; margin-top: 5%;"> 이벤트 더보기</a>
		</article>
	</section>

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
	var category2 = "<c:out value='${category2}'/>";
	var category3 = "<c:out value='${category3}'/>";
	var r_page = 1;
	function getList(){
		 var check=false;
		 var content = "";
		 $.ajax({
			 url:"${pageContext.request.contextPath}/search/searchEvent.us",
			 dataType:"text",
 			 data:{"page":page, "keyword":keyword,"category":category,"category2":category2,"r_page":r_page},
			 /* data:{"page":page}, */
			 contentType: "application/json",
			 success: function(list){
				 var eventArray=JSON.parse(list);
				 if(JSON.parse(list).length==0 || JSON.parse(list).length<1){
					alert('검색에 일치하는 이벤트가 없습니다.');
					/* alert('더 이상 등록된 게시물이 존재하지 않습니다.'); */
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
				 	/* li_content += '<a href="#" id="btn_open" class="button" style="margin: 0 auto; margin-top: 5%;"> 이벤트 더보기</a>'; */
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
	 
	 /*  자유게시글 카테고리 옵션 */
	 $("#category2").on("change", function(){
            var category2 = $("#category2 option:selected").val();
            var category3 = $("#category3 option:selected").val();
            location.href = "${pageContext.request.contextPath}/search/search.us?category2=" + category2 + "&page=1&category3=" + category3 + "&r_page=1&keyword="+keyword+"&category="+category;
         })
         
         $("a.paging").on("click", function(){
            var page = $(this).attr("href") || 1;
            var r_page = $(this).attr("href") || 1;
            var category2 = $("#category2 option:selected").val();
            var category3 = $("#category3 option:selected").val();
            location.href = "${pageContext.request.contextPath}/search/search.us?category2=" + category2 + "&page=" + page +"&category3="+ category3 +"&r_page=" + r_page + "&keyword="+keyword+"&category="+category;
         });
	 $("#category3").on("change", function(){
		 	var category2 = $("#category2 option:selected").val();
            var category3 = $("#category3 option:selected").val();
            location.href = "${pageContext.request.contextPath}/search/search.us?category2=" + category2 + "&page=1&category3=" + category3 + "&r_page=1&keyword="+keyword+"&category="+category;           
         })
         
         $("a.paging").on("click", function(){
			var page = $(this).attr("href") || 1;
            var r_page = $(this).attr("href") || 1;
            var category2 = $("#category2 option:selected").val();
            var category3 = $("#category3 option:selected").val();
            location.href = "${pageContext.request.contextPath}/search/search.us?category2=" + category2 + "&page=" + page +"&category3="+ category3 +"&r_page=" + r_page + "&keyword="+keyword+"&category="+category;
         });
</script>

 </html>