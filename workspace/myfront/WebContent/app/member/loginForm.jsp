<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
	Axiom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>TestLogin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<style>
		label{
		display:block;
		}
		#membertext {
	 	margin: 0 auto;
	 	width: 50%;
		}
	</style>
	<body class="right-sidebar is-preload">
	<c:if test="${not empty param.login}">
   	<c:if test="${not param.login}">
   		<script>alert("Invalid Login or password");</script>
   	</c:if>
   </c:if>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">
					<div class="container">

						<!-- Logo -->
							<div id="logo">
								<div>
									<h1><a href="#">SONG</a></h1>
									<span>By SSH</span>
								</div>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a href="mainForm.jsp">Home</a></li>
									<li><a href="joinForm.jsp">Sign Up</a></li>
									<li class="current_page_item"><a href="loginForm.jsp">Login</a></li>
								</ul>
							</nav>

					</div>
				</div>
				

			<!-- Main -->
		<div id="main" class="container">

			<form name="loginForm" action="${pageContext.request.contextPath}/member/MemberLoginOk.me" method="post">

						<!-- Login -->	
						
				<!-- <label for="email">Email</label><br>  -->
				<div id="membertext">
					<label for="email">E-mail</label>
				

							<input type="email" style="color:black" class="text"	name="memberEmail" id="memberEmail" value=""/>

				<br>
				<!-- <label for="pw">Password</label><br>  -->

					<label for="pw">Password</label> 

							<input type="password" style="color:black" class="text"	name="memberPw" id="memberPw" value=""/>

							<br>
							<a href="findPwForm.jsp" style="font-size: 0.9rem;">Forgot your password?</a>
					<ul class="actions">
							<li style="margin: 0 auto;">
								<input type="button" value="LOGIN" onclick="login()"/>
							</li>
						</ul>
					</div>
					</form>
			</div>

		
		</div>

		<!-- Scripts -->
		<script>var contextPath = "${pageContext.request.contextPath}";</script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.slidertron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
		<script src="${pageContext.request.contextPath}/app/member/login.js"></script>
	</body>
</html>