<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트모아 build log</title>
</head>
<body>
<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">


				<!-- Header -->		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
		
<article class="column col4">			
	<table>
		<thead class="col_tit">
			<tr>	
				<td colspan="2">
					<span style="padding-right: 200px;">team 	: EVENT MOA</span>
					<span style="padding-right: 50px;">auth 	: 킹기훈</span> 
					<span style="padding-left: 50px;">작업		: 2021-03-23</span>
				</td>
			</tr>
		</thead>
		
		<tbody class="col_desc">
			<tr style="float: left; padding: 0px; margin: 0 auto;">
				<td> 작업내역	:   
					<br>> 메인 슬라이드 사진 (사진 사이즈는 맞춤형 통일) 구현완료  
					<br>> section 정리 -> elements에 넣음
					<br>> footer 수정 
					<br>> search-bar style 생성 	
				</td>
			</tr>
			<tr style="float: right; padding: 0px; margin: 0 auto;'">
				<td> *작업예정	:    
					<br>> *Bug == 슬라이드 next , previous icon  
					<br>> search-bar 카테고리 생성
					<br>> 검색바 카테고리  
					<br>> section 지역띄우기 (?) 이건 먼 미래 구현 예정 	
				</td>
			</tr>
		</tbody>
	</table>
</article>

 	</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

</body>
</html>