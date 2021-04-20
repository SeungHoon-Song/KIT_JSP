<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<c:set var="login" value="${login}"/>
		<c:set var="session_id" value="${session_id}"/>
		<c:set var="user_Email" value="${user_Email}"/>
		
		<c:set var = 'userStatus' value = "false"></c:set>
		<c:if test="${session_id ne null }">
			<c:set var = 'userStatus' value = 'true'/>
		</c:if>

		<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
     	 </c:if>
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">
			${session_id} 님의 '${user_Email}' 이메일 변경</h1>
		</header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">이메일</h1>

				<!-- Content -->
	<div class="contents2" id="myPage">
		
		<form name="modifyEmailForm" action="${pageContext.request.contextPath}/user/mypage/UserModifyEmailOk.us" method="post">
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<br>
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto;">
							<p>
								<input type="email" name="new_Email" id="new_Email" autocomplete="off" required/>
								<label for="new_Email" style="color: silver;"><span>이메일</span></label>
							</p>
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
								<input type="hidden" name="session_id" value="${session_id}">
								<input type="hidden" name="user_Email" value="${user_Email}">
								<li><a href="javascript:modifySubmit();" class="button primary fit">이메일 변경</a></li>
							</ul>
						</div>
				</div>
		</form>
	</div>
</div>
	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		<!-- Scripts 1 -->
			<script src="${pageContext.request.contextPath}/assets/js/visiblePw.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
			<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/user_js/modifyEmail.js"></script>
			
			<script>
					/* 이메일 수정 js */
				var form = document.modifyEmailForm;

				function modifySubmit(){
					if(!form.new_Email.value){
						alert("이메일을 입력해주세요.");
						form.new_Email.focus();
						return;
					} else if (!form.email_verify.value) {
						alert("인증번호를 진행해주세요.");
						form.email_verify.focus();
						return;
					}

					form.submit();
				}
			</script>
				
	</body>
</html>