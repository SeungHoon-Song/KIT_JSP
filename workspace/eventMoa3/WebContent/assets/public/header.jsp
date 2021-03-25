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
						<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">메인</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/Event/mainEvent.jsp">이벤트</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/Event/nowEvent.jsp">진행 이벤트</a></li>
								<li><a href="${pageContext.request.contextPath }/Event/futureEvent.jsp">예정 이벤트</a></li>
								<li><a href="${pageContext.request.contextPath }/Event/pastEvent.jsp">종료 이벤트</a></li>
							</ul>
						</li>
						<li><a href="#">계정</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/user/login.jsp">로그인</a><li>
								<li><a href="${pageContext.request.contextPath}/user/signup_terms_short.jsp">회원가입</a><li>
							</ul>
						</li>
							<li>
								<a href="#">버전관리</a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/buildLog.jsp">빌드 로그</a></li>
								</ul>
							</li>
						<li><a href="${pageContext.request.contextPath}/generic.jsp">제네릭</a></li>
						<li><a href="${pageContext.request.contextPath}/elements.jsp">요소</a></li>
					</ul>
				</nav>
			</div>

			
</body>
</html>