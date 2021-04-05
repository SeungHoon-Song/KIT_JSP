<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<title>회원가입 | 이벤트 모아(Event Moa)</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<!-- 회원가입 css -->
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
		<!-- signup_terms 약관 동의 css  -->
		<style>
			#selectAllSmall{
				display:none;
			}
			@media (min-width:481px){
				#terms1{
					display: none;
				}
			}
			@media (max-width:480px){
				textarea#termsServiceContent{
					display:none;
				}
				textarea#termsPrivacyContent{
					display:none;
				}
				div#termsDiv{
					width:100% !important;
				}
				div#btnDiv{
					width:100%;
					padding-left:0;
				}
				#selectAllSmall{
					display:inline;
				}
				#selectAll{
					display:none;
				}
				
			
			}
		</style>

	</head>
	<body class="is-preload">

		<c:set var = 'userStatus' value = "false"></c:set>
		<c:if test="${param.type eq 'login' }">
			<c:set var = 'userStatus' value = 'true'/>
		</c:if>
		<c:if test="${not empty param.join }">
			<c:if test="${not param.join}">
					<script>alert("누락된 항목은 없는지, 입력 사항을 다시 확인해주세요.");</script>
			</c:if>
		</c:if>
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>

					<!-- Content -->
					<h1>개인 정보</h1>
			<div class="contents" id="signupContents" style="border: 2px solid #ccc; border-radius: 4px; padding: 12px 20px; width: 80%; margin: 0 auto;">
				<form name="joinForm" action="${pageContext.request.contextPath}/user/UserJoinOk.us" method="post">
				<div class="signup_message" id="signup_message">
					<h2>기본 정보</h2>
					<br>
				</div>
				<a href="name" class="VZLjze Wvetm I6g62c N5YmOc kJXJmd" data-rid="201" data-nav-type="5">
				<div class="VJbqBb" role="text"><div class="R1PxN"><div class="BQtBnc"><div class="cdy4hc"><div class="xoXYwe">
				<h3 class="WzaSad">이름</h3></div></div><div class="zTjtYe" style="-webkit-flex-basis:328px;-ms-flex-preferred-size:328px;flex-basis:328px;"><div class="xoXYwe"><div class="bJCr1d">송승훈</div></div></div></div></div><span class="DPvwYc sm8sCf" aria-hidden="true"></span></div></a>
				<hr style="width: 80%; margin-inline: auto;">
				<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto;">
							<p>
								<input type="text" name="user_Id" id="user_Id" autocomplete="off" required/>
								<label for="user_Id" style="color: silver;"><span>아이디</span></label>
								<span id="idCheck_text"><br></span>
								<br>
							</p>
							<a href="javascript:checkId();" type="submit" id="idCheckBtn" class="button" style="height: 35px;">중복확인</a>
							<a href="javascript:modifyId();" type="submit" id="idModifyBtn" class="button" style="height: 35px;">수정하기</a>
						</ul>
						<p>
							<input type="password" name="user_Pw" id="user_Pw" autocomplete="off" required/>
							<label for="user_Pw" style="color: silver;"><span>비밀번호</span></label>
							<i toggle="#user_Pw" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
							<span id="pwCheck_text"><br></span>
						</p>
						<p>
							<input type="text" name="user_Name" id="user_Name" autocomplete="off" required/>
							<label for="user_Name" style="color: silver;"><span>이름</span></label>
						</p>
					
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

						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-bottom: auto;">
						<p>
								<input type="text" name="user_Zipcode" id="user_Zipcode" class="postcodify_postcode5" value="" placeholder="우편번호" readonly/>
						</p>
								<input type="button" id="postcodify_search_button" style="height: 35px;" value="검색"/>
						</ul>
						
						<p>
							<input type="text" name="user_Address" id="user_Address" class="postcodify_address" value="" placeholder="주소" readonly/>
						</p>
						
						<p>
							<input type="text" name="user_Address_DETAIL" id="user_Address_DETAIL" class="postcodify_details" autocomplete="off" required/>
							<label for="user_Address_DETAIL" style="color: silver;"><span>상세주소</span></label>
						</p>
						

						<p>
							<input type="text" name="user_Address_Etc" id="user_Address_Etc" class="postcodify_extra_info" value="" placeholder="참고항목" readonly/>
						</p>
							
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="javascript:formSubmit()" class="button primary fit">가입완료</a></li>
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
			<script src="${pageContext.request.contextPath}/assets/js/user_js/join.js"></script>
		
	</body>
</html>