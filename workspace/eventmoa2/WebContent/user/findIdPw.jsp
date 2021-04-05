<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8"); %>	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>아이디,비밀번호 찾기 | 이벤트 모아(Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
	</head>
	<body class="is-preload">
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

					<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
						

				<!-- Content -->
			<form name="findForm" action="" method="post">
				<h3 style="font-size: 18px; color: #222222; text-align: center;">회원 아이디 찾기</h3>
				<p style="text-align: center;">회원가입 시, 입력하신 이름 + 이메일로 아이디를 확인하실 수 있습니다.</p>
				<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
							<input type="text" name="user_Name" id="user_Name" value="" placeholder="이름" />
							<br>
							<input type="email" name="user_Email" id="user_Email" value="" placeholder="가입메일주소" />
							
					</div>
				</div>			
					<br>
					<ul class="actions" style="display: table; margin-left: auto; margin-right: auto;">
										<li style="float: left;"><a href="javascript:findId();" class="button primary">　　아이디 찾기　　</a></li>
										<li style="float: right;"><a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button">　　　로그인　　　</a></li>
					</ul>
					
				<hr style="width: 80%; margin-inline: auto;">
								
				<h3 style="font-size: 18px; color: #222222; text-align: center;">임시 비밀번호 발급</h3>
				<p style="text-align: center;">가입하신 아이디+이메일 입력, 본인인증을 통해 이메일로 임시 비밀번호를 보내드립니다.</p>
				<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
							<input type="text" name="user_Id" id="user_Id" value="" placeholder="아이디" />
							<br>
							<input type="email" name="user_Email2" id="user_Email2" value="" placeholder="가입메일주소" />
							
					</div>
				</div>
					<br>
								<ul class="actions" style="display: table; margin-left: auto; margin-right: auto;">
										<li style="float: left;"><a href="javascript:findPw();" class="button primary">임시 비밀번호 발급</a></li>
										<li style="float: right;"><a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button">　　　로그인　　　</a></li>
								</ul>			
				
			</form>
				


	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
		</div>
		
		<!-- Scripts -->
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/user_js/findIdPw.js"></script>
			

	</body>
</html>