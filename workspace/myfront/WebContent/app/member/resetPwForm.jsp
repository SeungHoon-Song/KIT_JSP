<!DOCTYPE HTML>
<!--
	Axiom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Reset Password</title>
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
				<p style="text-align: center; font-size:24px; font-weight: bold;">Reset your password</p>
				<p style="text-align: center;">Please enter a new password, you will be automatically redirected to your account once it has been reset.</p>

				
		
		<form name="resetPwForm" action="${pageContext.request.contextPath}/member/MemberResetPwOk.me" method="post">				<div id="membertext">
			<label for="code">Verification Code</label>			
					
				<input id="code" type="text" style="color:black; display: inline-block; width: 93%;" class="text" name="code" value="">
					
					
					<label for="memberPw">New Password</label>			
				
				<input id="memberPw" type="password" style="color:black; display: inline-block; width: 93%;" class="text" name="memberPw" value="">
              <span toggle="#memberPw" class="fa fa-fw fa-eye field-icon toggle-password"></span>

				
			

					<ul class="actions">
							<li style="margin: 0 auto;">
								<input type="button" value="RESET PASSWORD" onclick="resetPw()"/>
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
		<script src="${pageContext.request.contextPath}/assets/js/visiblePw.js"></script>
		<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
		<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
</html>