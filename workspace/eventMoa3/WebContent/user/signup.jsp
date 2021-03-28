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
						<P>
							<input type="text" name="memberId" id="memberId"autocomplete="off" required/>
							<label for="memberId" style="color: silver;"><span>아이디</span></label>
						</P>
						<p>
							<input type="password" name="memberPw" id="memberPw" autocomplete="off" required/>
							<label for="memberPw" style="color: silver;"><span>비밀번호</span></label>
							<i toggle="#memberPw" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
						</p>
						<p>
							<input type="text" name="memberName" id="memberName" autocomplete="off" required/>
							<label for="memberName" style="color: silver;"><span>이름</span></label>
						</p>
					
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto;">
							<p>
								<input type="email" name="memberEmail" id="memberEmail" autocomplete="off" required/>
								<label for="memberEmail" style="color: silver;"><span>이메일</span></label>
							</p>
								<input type="button" id="memberEmailHash" style="height: 35px;" value="인증번호 요청"/>
						</ul>
						<p>
							<input type="email" name="memberEmailHash" id="memberEmailHash" value="" placeholder="이메일 인증번호" />
						</p>	
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-bottom: auto;">
						<p>
								<input type="text" name="memberZipcode;" id="memberZipcode;" class="postcodify_postcode5" value="" placeholder="우편번호" readonly/>
						</p>
								<input type="button" id="postcodify_search_button" style="height: 35px;" value="검색"/>
						</ul>
						
						<p>
							<input type="text" name="memberAddress;" id="memberAddress;" class="postcodify_address" value="" placeholder="주소" readonly/>
						</p>
						
						<p>
							<input type="text" name="memberAddressDETAIL;" id="memberAddressDETAIL;" class="postcodify_details" autocomplete="off" required/>
							<label for="memberAddressDETAIL;" style="color: silver;"><span>상세주소</span></label>
						</p>
						

						<p>
							<input type="text" name="memberAddressEtc;" id="memberAddressEtc;" class="postcodify_extra_info" value="" placeholder="참고항목" readonly/>
						</p>
							
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="#" class="button primary fit">가입완료</a></li>
							</ul>
						</div>
					
				</div>
			</form>


	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			</div>

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