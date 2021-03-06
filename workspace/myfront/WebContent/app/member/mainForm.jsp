<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>TestHome</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">
					<div class="container">

						<!-- Logo -->
							<div id="logo">
								<div>
									<h1><a href="#">SONG</a></h1>
									<span>By SSH</span>
								</div>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li class="current_page_item"><a href="mainForm.jsp">Home</a></li>
									<li><a href="joinForm.jsp">Sign Up</a></li>
									<li><a href="loginForm.jsp">Login</a></li>
								</ul>
							</nav>

					</div>
				</div>

			<!-- Banner -->
				<div id="banner" class="container">
					<section>
						<header>
							<h2>Welcome My Website</h2>
							<span class="byline">Tempus aliquam sed consequat feugiat magna etiam</span>
						</header>
						<footer>
							<a href="#" class="button icon solid fa-long-arrow-alt-right">Praesent gravidan</a>
						</footer>
					</section>
				</div>

			<!-- Slider -->
				<div id="slider" class="container">
					<a href="#"><span class="previous-button icon solid fa-angle-left"></span></a>
					<a href="#"><span class="next-button icon solid fa-angle-right"></span></a>
					<div class="viewer">
						<div class="reel">
							<div class="slide">
								<span class="pennant"><span class="icon solid fa-rocket"></span></span>
								<p>Phasellus ultrices nulla quis nibh. Quisque a lectu. Donec consectetuer ligula et vulputate.</p>
								<a href="#" class="links">More</a>
							</div>
							<div class="slide">
								<span class="pennant"><span class="icon solid fa-cogs"></span></span>
								<p>Etiam neque. Vivamus consequat lorem. Nullam semper eleifend. Donec mattis libero eget urna.</p>
								<a href="#" class="links">More</a>
							</div>
							<div class="slide">
								<span class="pennant"><span class="icon solid fa-file"></span></span>
								<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor.</p>
								<a href="#" class="links">More</a>
							</div>
						</div>
					</div>
				</div>

			<!-- Main -->
				<div id="main" class="container">

					<div id="featured">

						<div class="row gtr-uniform">
							<section class="col-6 col-12-narrower">
								<a href="#" class="image"><img src="images/placeholder.png" alt=""></a>
								<h3>Phasellus ultri</h3>
								<p>Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p>
								<a href="#" class="link2">More<span class="icon solid fa-plus-circle"></span></a>
							</section>
							<section class="col-6 col-12-narrower">
								<a href="#" class="image"><img src="images/placeholder.png" alt=""></a>
								<h3>Aliquam tincid</h3>
								<p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p>
								<a href="#" class="link2">More<span class="icon solid fa-plus-circle"></span></a>
							</section>
							<section class="col-6 col-12-narrower">
								<a href="#" class="image"><img src="images/placeholder.png" alt=""></a>
								<h3>Phasellus ultri</h3>
								<p>Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p>
								<a href="#" class="link2">More<span class="icon solid fa-plus-circle"></span></a>
							</section>
							<section class="col-6 col-12-narrower">
								<a href="#" class="image"><img src="images/placeholder.png" alt=""></a>
								<h3>Aliquam tincid</h3>
								<p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p>
								<a href="#" class="link2">More<span class="icon solid fa-plus-circle"></span></a>
							</section>
						</div>

					</div>
					<div id="intro">
						<section>
							<div class="heading">
								<span class="txt1">Fusce pellentesque</span>
								<span class="txt2">Integer vitae libero ac risus egestas placerat</span>
							</div>
						</section>
					</div>

					<div id="extra">
						<div class="row gtr-200">
							<section class="col-4 col-12-narrower">
								<span class="pennant"><span class="icon solid fa-tint"></span></span>
								<div class="box">
									<p>Praesent dapibus, neque id fio intion supendibus, tortor neque egestas augu uspendisse urna vulputate magna eros. Aliquam erat volut enean dignissim pellentesque felis</p>
								</div>
								<a href="#" class="link">More Info</a>
							</section>
							<section class="col-4 col-12-narrower">
								<span class="pennant"><span class="icon solid fa-pencil-alt"></span></span>
								<div class="box">
									<p>Donec nec justo eget felis fafermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim arcuat uspendisse urna pellentesqu, tincidunt quis, accumsan porttitor, facilisis</p>
								</div>
								<a href="#" class="link">More Info</a>
							</section>
							<section class="col-4 col-12-narrower">
								<span class="pennant"><span class="icon solid fa-user"></span></span>
								<div class="box">
									<p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies ciam nibh, viverra non, semper suscipi uspendisse mitind vulputate simpoem</p>
								</div>
								<a href="#" class="link">More Info</a>
							</section>
						</div>
					</div>

				</div>

			<!-- Newsletter -->
				<div id="newsletter" class="container">
					<section>
						<header>
							<h2>Morbi insem uisdui</h2>
							<span class="byline">Vivamus vestibulum nulla nec ante</span>
						</header>
						<form method="post" action="#" id="subscribe">
							<input type="text" class="text" name="search" placeholder="Email address" />
							<a href="#" class="button">Submit</a>
						</form>
					</section>

				</div>

			<!-- Footer -->
				<div id="footer" class="container">

					<div class="row">
						<div class="col-12">
							<span class="copyright">&copy; Untitled. All rights reserved.</span>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-facebook-f"><span>Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-twitter"><span>Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-google-plus-g"><span>Google+</span></a></li>
							</ul>

						</div>
					</div>

				</div>

		</div>

		<!-- Scripts -->
		<script>var contextPath = "${pageContext.request.contextPath}";</script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.slidertron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	</body>
</html>