<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	team 	: EVENT MOA
	auth 	: 킹기훈 
	작업		: 2021-03-23
	작업내역	: 
			> 메인 슬라이드 사진 (사진 사이즈는 맞춤형 통일) 
			> section 정리 -> elements에 넣음
			> footer 수정 
			> search-bar style 생성 
-->
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
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
					<header>
						<span class="logo"></span>
						<!-- <h1><strong>이벤트 모아</strong></h1> -->
					</header>
					
							<!-- search-bar -->
					<section class="search-bar">
					
					</section>
					
			<!-- Slider -->
			<section id="banner">
				<h3 class="ir_su">  </h3>
				<article class="column col4">
					<h4 class="col_tit" style="text-align: center;"> 이벤트 모아 </h4>
					<p class="col_desc"> </p>
					<!-- 이미지 슬라이드 -->
					<div class="slider">
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner1.jpg" alt="이미지1">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner2.jpg" alt="이미지2">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner3.jpg" alt="이미지3">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner4.jpg" alt="이미지4">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
					</div>
				</article>
					<!-- //이미지 슬라이드 -->
				<!-- 
				<article class="column col5">
					<h4 class="col_tit"> 제목 </h4>
					<p class="col_desc">이 곳은 설명 부분.</p>
					
				</article>
				
				<article class="column col6">
					<h4 class="col_tit">Title</h4>
					<p class="col_desc">이 곳은 설명 부분.</p>
				</article>
				 -->
			</section>

	
				<!-- Two -->
					<section id="two" class="wrapper style1 spotlight alt">
						<div class="content">
							<div class="inner">
								<h2>Ipsum accumsan</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="images/pic02.jpg" data-position="30% 30%" alt="" />
						</div>
					</section>
		

				<!-- Three -->
					<section id="three" class="wrapper style2 spotlight">
						<div class="content">
							<div class="inner">
								<h2>Etiam consequat</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="images/pic03.jpg" data-position="center right" alt="" />
						</div>
					</section>

			</div> <!-- div id="main" end -->

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
			<script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
	 <script>
     //이미지 슬라이더
     $(".slider").slick({
         dots: true,
         autoplay: true,
         autoplaySpeed: 3000,
         arrows: true,
         responsive: [
             {
                 breakpoint: 768,
                 settings: {
                     autoplay: false,
                     }
             }
         ]
     });
     
     //sns 공유하기
     $(".facebook").click(function(e){
         e.preventDefault();
         window.open('https://www.facebook.com/sharer/sharer.php?u=' +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, height=300, width=600'); 
     });
     $(".twitter").click(function(e){
         e.preventDefault();
         window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20' +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, height=300, width=600');
     });
        </script>
	</body>
</html>