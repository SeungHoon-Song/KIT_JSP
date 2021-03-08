<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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


						<!-- Login -->	
						
				<!-- <label for="email">Email</label><br>  -->
				<div id="membertext">
					<label for="email">E-mail</label>
				</div>
				<form method="post" action="#" id="subscribe">
							<input type="email" style="color:black" class="text"	name="email" id="email" value=""/>
				</form>
				<br>
				<!-- <label for="pw">Password</label><br>  -->
				<div id="membertext">
					<label for="pw">Password</label> 
					</div>
				<form method="post" action="#" id="subscribe">
							<input type="password" style="color:black" class="text"	name="pw" id="pw" value=""/>
				</form>
				
				<form method="post" action="#" style="text-align: center;">
							<a href="forgotPw.html" style="font-size: 0.7rem;">Forgot your password?</a>
					<ul class="actions">
							<li style="margin: 0 auto;">
								<input type="button" value="LOGIN" />
							</li>
						</ul>
				</form>
					</div>


		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.slidertron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
	</body>
</html>