<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<style>
		.pw-container i {
            position: absolute;
        }
  
        .toggle-password {
            padding: 10px;
            min-width: 50px;
            text-align: center;
        }
		</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
					<header>
					<span class="logo"></span>
					</header>
						<div class="signup_message">
							<h1>회원정보 입력</h1>
							<br>
						</div>

				<!-- Content -->
			<form name="loginForm" action="" method="post">
			
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
							<input type="text" name="memberId" id="memberId" value="" placeholder="아이디" />
							<div class="pw-container">
								<i toggle="#memberPw" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
								<input type="password" name="memberPw" id="memberPw" value="" placeholder="패스워드" />
							</div>
							<input type="text" name="memberName" id="memberName" value="" placeholder="이름" />
							<input type="text" name="memberEmail" id="memberEmail" value="" placeholder="이메일" />
							<input type="email" name="memberEmailHash" id="memberEmailHash" value="" placeholder="이메일 인증번호" />
							<input type="text" name="memberZipcode;" id="memberZipcode;" class="postcodify_postcode5" value="" placeholder="우편번호" readonly/>
							<input type="button" id="postcodify_search_button" value="검색"><br />
							<input type="text" name="memberAddress;" id="memberAddress;" class="postcodify_address" value="" placeholder="주소" readonly/>
							<input type="text" name="memberAddressDETAIL;" id="memberAddressDETAIL;" class="postcodify_details" value="" placeholder="상세주소" />
							<input type="text" name="memberAddressEtc;" id="memberAddressEtc;" class="postcodify_extra_info" value="" placeholder="참고항목" readonly/>
							
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">
					<div class="col-12">
							
							<p class="signup-forgotten">
								<a href="${pageContext.request.contextPath}/user/signup_terms_short.jsp" class="sign-up" style="font-weight: bold;">회원가입</a>
								<span></span>
								<a href="${pageContext.request.contextPath}/user/findIdPw.jsp" class="forgotten">아이디/비밀번호 찾기</a>
							</p>
							
						<div class="col-6 col-12-medium">
							<ul class="actions stacked">
								<li><a href="#" class="button primary fit">가입완료</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</form>
				


	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
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