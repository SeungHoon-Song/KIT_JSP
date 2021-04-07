<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<c:set var="login" value="${login}"/>
		<c:set var="session_id" value="${session_id}"/>
		<c:set var="currentPw" value="${currentPw}"/>
		
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
	
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">${session_id} 님의 비밀번호 변경</h1>
		</header>
		<div class="contents" id="mypagePassword">
			<form name="myPage" action="" method="post">
			<div style="text-align: center;">					
				<div class="row gtr-uniform" id="loginFrame">
					<div class="col-12">
						<label for="currentPw2" style="text-align: initial;">비밀번호</label> <input type="password"
								name="currentPw2" id="currentPw2" value="" />
					</div>
				</div>
        		<br>
        		<div class="col-6 col-12-medium" style="text-align: center;">
        			<ul class="actions" style="display: inline-flex;">
						<li>
						<a href="javascript:formSubmit();" class="button primary fit" id="memberAuth">회원 인증</a>
						</li>
					</ul>
				</div>
				
				</div>
			</form>
			
			

			</div>

<!-- 두번째 컨텐츠 -->

				<!-- Content -->
			<div class="contents2" id="myPage">
			<form name="modifyPwForm" action="${pageContext.request.contextPath}/user/UserModifyPwOk.us" method="post">

			
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<br>
						
						<p>
							<input type="password" name="user_Pw" id="user_Pw" autocomplete="off" required/>
							<label for="user_Pw" style="color: silver;"><span>새 비밀번호</span></label>
							<i toggle="#user_Pw" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
						</p>
						
						<p>
							<input type="password" name="user_Pw2" id="user_Pw2" autocomplete="off" required/>
							<label for="user_Pw2" style="color: silver;"><span>새 비밀번호 확인</span></label>
							<i toggle="#user_Pw2" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
						</p>						
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="javascript:modifySubmit();" class="button primary fit">비밀번호 변경</a></li>
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
			<!-- 컨텐츠 보이기/숨기기 -->
			<script>
			const divPassword = document.getElementById("mypagePassword");
			const divmyPage = document.getElementById("myPage");
			
			divPassword.style.display = 'block';
			divmyPage.style.display = 'none';
			
			function formSubmit(){
				var currentPw = "${currentPw}";
				console.log(currentPw);
				var currentPw2 = $("#currentPw2").val();
				console.log(currentPw2);
				if(currentPw == currentPw2){
					divPassword.style.display = 'none';
					divmyPage.style.display = 'block';		
				}else{
					alert('비밀번호가 틀립니다.');
					return false;
				}
			}
			</script>
			<!-- 비밀번호 수정 -->
			<script>
			var form = document.modifyPwForm;
			
			console.log("대기");
			function modifySubmit(){
				var password = $("#user_Pw").val();
				console.log(password);
				var password2 = $("#user_Pw2").val();
				console.log(password2);
				
				if(password == password2){
					form.submit();
				}else{
					alert('새 비밀번호가 같지 않습니다.');
					return false;
				}
			}
			</script>
			
			
			
			
	</body>
</html>