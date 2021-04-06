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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<style>
		.field-icon {
  			float: right;
  			margin-right: 15px;
  			margin-top: -25px;
  			position: relative;
  			z-index: 2;
  			}
  			
		p { position:relative; width:100%; height:50px; } /* 기본세팅 */
		p input { box-sizing:border-box; padding:20px 0 0; width:100%; height:100%; border:0 none; color:#595f63; outline:none; }
		p label { position:absolute; left:3%; bottom:10%; width:100%; height:100%; text-align:left; pointer-events:none; }
		p label span { position:absolute; left:0; bottom:5px; transition:all .3s ease; }
		p input:focus + label span, 
		p input:valid + label span { transform:translateY(-150%); font-size:14px; color:#5fa8d3; }  
		/* input에 글을 입력하고 포커스가 지나간 상태에서 제어하려면 valid 선택자를 써야한다. */
		/* 포커스 될 때 label span(name)이 위로 올라감 */
		p input:focus + label::after,
		p input:valid + label::after { width:100%; transform:translateX(0); }
		</style>
	</head>
	
	<body class="is-preload">
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<header>
		</header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">이메일</h1>

				<!-- Content -->
			<div class="contents2" id="myPage">
			<form name="loginForm" action="" method="post">

			
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<br>
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto;">
							<p>
								<input type="email" name="user_Email" id="user_Email" autocomplete="off" required/>
								<label for="user_Email" style="color: silver;"><span>이메일</span></label>
							</p>
								<!-- <input type="button" name="verifyRequest" id="verifyRequest" style="height: 35px;" value="인증번호 요청"/> -->
								<a href="javascript:EmailCheck();" type="submit" id="verifyRequest" class="button" style="height: 35px;">인증번호 요청</a>
						</ul>
						
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto;">
						<p>
							<input type="text" name="email_verify" id="email_verify" value="" placeholder="인증번호 7자리">
						</p>	
							<a href="javascript:verifyCheck();" type="submit" id="verifyBox" class="button" style="height: 35px;">인증번호 확인</a>
						</ul>					
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="#" class="button primary fit">이메일 변경</a></li>
							</ul>
						</div>
				</div>
			</form>
			</div>
</div>
	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/visiblePw.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
			<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/user_js/modifyEmail.js"></script>
			
				
	</body>
</html>