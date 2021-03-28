<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
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

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
			<form name="myPage" action="" method="post">
			<div style="text-align: center;">
				<p>
				이벤트모아 님
				<br>
				</p>
				<ul>
           			<li>
                
                		<span><em>내가 쓴 게시글 [</em><a href="${pageContext.request.contextPath}/user/mypage/myWrite.jsp">  <b>0</b></a> ]</span>
            		</li>
           			<li>
               
                		<span><em>내가 쓴 댓글 [</em><a href="${pageContext.request.contextPath}/user/mypage/myReply.jsp">  <b>0</b></a> ]</span>
            		</li>
            		<li>
               
                		<span><em>포인트 [</em><a href="${pageContext.request.contextPath}/user/mypage/pointReceipt.jsp">  <b>0</b></a> ]</span>
            		</li>
        		</ul>
        		<br>
        		<div class="col-6 col-12-medium">
        			<ul class="actions" style="display: inline-flex;">
						<li><a href="${pageContext.request.contextPath}/user/mypage/myWrite.jsp" class="button">　내가 쓴 글　</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/myReply.jsp" class="button">　내가 쓴 댓글　</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/myPage_password.jsp" class="button">회원정보 수정</a></li>
					</ul>
				</div>
				
				<div class="col-6 col-12-medium">
        			<ul class="actions" style="display: inline-flex;">
						<li><a href="${pageContext.request.contextPath}/user/mypage/pointCharge.jsp" class="button">포인트 충전소</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/pointReceipt.jsp" class="button">포인트 결제내역</a></li>
						<li><a href="#" class="button">　회원 탈퇴　</a></li>
					</ul>
				</div>
				
				
				<section id="banner">
			<article class="column col4">
				<p class="col_desc"> </p>
				<h2 class="col_tit" style="text-align: left;">내가 쓴 댓글</h2>
		
						<form method="post" action="#" class="combined" style="margin-bottom: 0;">
		         			<select name="category" class="button primary icon solid fa-search" id="category" style="font-size: 10px; width: 10%; padding: 0; display: block;">
			         				<option value="recent">등록일순</option>
			         				<option value="view">조회순</option>
			         				<option value="likes">추천순</option>
			         			</select>
			         			<div style="float:right; font-size: 11px;">
				         			<a href="javascript:;" class="button-dark tooltip">
										<span class="fa fa-adjust">	반전모드</span>
									</a>
								</div>
	         			</form>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>추천</th>
											<th style="text-align: center;">제목</th>
											<th>닉네임</th>
											<th>조회수</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>17:43</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
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
					         				<a href="/">이전</a>
					         				</div>
		         					  <div class="button primary small" style="width: auto;">
						         					<!-- 페이지 수 -->&nbsp;
						         					<a href="/">&nbsp;</a>
						               	</div>
			         					  <div class="button primary small" style="width: 15%;">
					         				<a href="/">다음</a>
						               	</div>
								</div>
						         
							</div>
							
							</article>
						</section>
				
				</div>
			</form>
			
			

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>