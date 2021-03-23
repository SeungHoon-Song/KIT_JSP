<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이벤트 모아 (Event Moa)</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		
		<!-- title-icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<!-- style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
	</head>
	<body class="is-preload">

		<!-- Header -->
			<div id="header" class="alt">
				<a class="logo" href="${pageContext.request.contextPath}/index.jsp"></a>
				<nav id="nav">
					<ul>
						<li class="active"><a href="index.jsp">메인</a></li>
						<li>
							<a href="#">미정</a>
							<ul>
								<li><a href="#">Link One</a></li>
								<li><a href="#">Link Two</a></li>
								<li><a href="#">Link Three</a></li>
								<li>
									<a href="#">서브메뉴</a>
									<ul>
										<li><a href="#">Link One</a></li>
										<li><a href="#">Link Two</a></li>
										<li><a href="#">Link Three</a></li>
										<li><a href="#">Link Four</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="generic.jsp">제네릭</a></li>
						<li><a href="elements.jsp">요소</a></li>
						<li><a href="login.jsp">로그인</a><li>
						<li><a href="signup.jsp">회원가입</a><li>
					</ul>
				</nav>
			</div>

			
</body>
</html>