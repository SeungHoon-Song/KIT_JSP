<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		</header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">비밀번호</h1>
		<div class="contents" id="mypagePassword">
			<form name="myPage" action="" method="post">
			<div style="text-align: center;">					
				<div class="row gtr-uniform" id="loginFrame">
					<div class="col-12">
						<label for="usinguser_Pw" style="text-align: initial;">비밀번호</label> 
						<input type="password" name="usinguser_Pw" id="usinguser_Pw" value="" />
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
			<form name="modifyPwForm" action="${pageContext.request.contextPath}/user/UserPwModifyOk.us" method="post">

			
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<br>
						
						<p>
							<input type="password" name="user_Pw" id="user_Pw" autocomplete="off" required/>
							<label for="user_Pw" style="color: silver;"><span>새 비밀번호</span></label>
							<i toggle="user_Pw" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
						</p>
						
						<p>
							<input type="password" name="user_Pw2" id="user_Pw2" autocomplete="off" required/>
							<label for="user_Pw2" style="color: silver;"><span>새 비밀번호 확인</span></label>
							<i toggle="user_Pw2" id="eyeIcon" class="fa fa-fw fa-eye field-icon toggle-password"></i>
						</p>						
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="javascript:modifySubmit();" type="submit" class="button primary fit">비밀번호 변경</a></li>
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
			<script>
			const divPassword = document.getElementById("mypagePassword");
			const divmyPage = document.getElementById("myPage");
			
			divPassword.style.display = 'block';
			divmyPage.style.display = 'none';
			
			
			function formSubmit(){
				
				
					divPassword.style.display = 'none';
					divmyPage.style.display = 'block';
				
				
			}
			</script>
			<script>
			var form = document.modifyPwForm;
			
			function modifySubmit(){
				
				form.submit();
				
			}
			
			</script>
			
			
			
			
	</body>
</html>