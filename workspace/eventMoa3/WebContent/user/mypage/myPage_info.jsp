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
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		<form name="myPage" action="" method="post">
			<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">회원정보 수정</h1>
			<hr style="width: 80%; margin-inline: auto;">
			<section id="two" class="wrapper style1 spotlight alt" style="background-color: #1ec9ff">
						<div class="content">
							<div class="inner">
								<h2>이름</h2>
								<p>개명하셨거나 사용하고 싶은 닉네임처럼 사용 가능한 이름입니다.</p>
								<ul class="actions">
									<li><a href="#" class="button">이름 변경</a></li>
								</ul>
							</div>
						</div>
						<div class="image" style="background-image: url(&quot;images/pic02.jpg&quot;);">
							<img src="${pageContext.request.contextPath}/images/user/changeName2.png" alt="이름변경">
						</div>
					</section>
					
					<section id="three" class="wrapper style2 spotlight" style="background-color: #246197">
						<div class="content">
							<div class="inner">
								<h2>이메일</h2>
								<p>나와 다른 사용자에게 나의 이벤트모아 계정임을 알리는 데 사용되는 이메일 주소입니다.</p>
								<ul class="actions">
									<li><a href="#" class="button">이메일 변경</a></li>
								</ul>
							</div>
						</div>
						<div class="image" style="background-image: url(&quot;images/pic03.jpg&quot;);">
							<img src="${pageContext.request.contextPath}/images/user/changeEmail2.png" alt="이메일변경">
						</div>
					</section>
					
					<section id="two" class="wrapper style1 spotlight alt" style="background-color: #36c6f4">
						<div class="content">
							<div class="inner">
								<h2>비밀번호</h2>
								<p>본인임을 인증하고 안전한 비밀번호를 만들고 같은 비밀번호를 다른 계정에 사용하지 마세요.</p>
								<ul class="actions">
									<li><a href="${pageContext.request.contextPath}/user/mypage/myPage_password.jsp"class="button">비밀번호 변경</a></li>
								</ul>
							</div>
						</div>
						<div class="image" style="background-image: url(&quot;images/pic02.jpg&quot;);">
							<img src="${pageContext.request.contextPath}/images/user/changePw2.png" alt="비밀번호변경">
						</div>
					</section>
					
					<section id="three" class="wrapper style2 spotlight" style="background-color: #246197">
						<div class="content">
							<div class="inner">
								<h2>주소</h2>
								<p>직장이나 자택 등 원하는 주소로 변경하실 수 있습니다.</p>
								<ul class="actions">
									<li><a href="#" class="button">주소 변경</a></li>
								</ul>
							</div>
						</div>
						<div class="image" style="background-image: url(&quot;images/pic03.jpg&quot;);">
							<img src="${pageContext.request.contextPath}/images/user/changeAddress2.png" alt="주소변경">
						</div>
					</section>
				
		</form>


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>