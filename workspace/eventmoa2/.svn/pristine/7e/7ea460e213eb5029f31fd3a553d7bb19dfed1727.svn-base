<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
-->
<html>
	<head>
		<title>포인트/적립 내역 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
		#dayToBtn {
			cursor: pointer;
			height: 30%;
			width: 10%;
			margin: 0;
			padding: 0;
		}
		</style>
		
	</head>
	
	<body class="is-preload">
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>


		<!-- 포인트 충전 / 적립 내역 -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: center;">충전/적립 내역</h2>
				<p class="col_desc"></p>
		    <table>
		 	   <tbody>
				  <tr>
		     	     <td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
		           회원님의 포인트 적립 내역입니다.
		            <b><font color="f75151">포인트 적립에 관한 모든 내역</font></b>
		           을 보실 수 있습니다. </td>
	   			 </tr>
	   		 </tbody>
		   </table>
			<form method="post" action="#" style="margin-bottom: 30%;">
         			<button id="dayToBtn">오늘</button> 
         			<button id="dayToBtn">일주</button>
         			<button id="dayToBtn">한달</button>
         			
					<table class="alt">
						<thead>
							<tr>
								<th>날짜</th>
								<th>포인트</th>
								<th style="text-align: center;">내역</th>
								<th>잔여일(남음)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2021-03-29 13:42:05</td>
								<td>500P</td>
								<td>회원가입 감사 300포인트 지급 </td>
								<td>7일</td>
							</tr>
						</tbody>
					</table>
			</form>
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
					</div>
					
							
		</article>
	</section>
		


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>