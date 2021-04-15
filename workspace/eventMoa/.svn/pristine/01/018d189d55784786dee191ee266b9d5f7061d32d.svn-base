<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
 
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/writeForm.css">
		<style>
		.star_rating {font-size:0; letter-spacing:-4px; margin-right:5%;}
		.star_rating a {
		    font-size:22px;
		    letter-spacing:0;
		    display:inline-block;
		    margin-left:5px;
		    color:#ccc;
		    text-decoration:none;
		}
		.star_rating a:first-child {margin-left:0;}
		.star_rating a.on {color:#777;}
		.intro{
			display:inline-block;
			margin-right:3%;
		}
		#writer{
			float:right;
		}
		.date{
			margin-left:2%;
		}
		.content{
			display:block;
		}
		.intro h4 {
			font-size: 25px; color: black; padding-bottom: 5px; font-weight:600;
		}
		.intro span {
			font-size: 20px; color: #2f7fa6; padding-bottom: 5px; font-weight:600;
			color: deeppink;
		}
		.col_desc{
			margin-top: 3%;
		}
		</style>
	</head>
	
	<body class="is-preload">
		<c:set var="e_vo" value="${e_vo}"/>
		<c:set var="replies" value="${replies}"/>
		<c:set var="files" value="${files}"/>
		<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
					<div style="margin-right: 3%;">
						<c:if test="${e_vo.getBoard_Id() eq session_id}">
							<a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a>
							<a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
						</c:if>
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev?page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
					</div>
				

						<div class="login_message">
							<h1>${e_vo.getBoard_Title()}</h1>
							<br>
						</div>
					<!-- 이미지 슬라이드 -->
					<div class="slider" style="width:70%; margin:0 auto;">
						<div>
							<figure>
								<!-- 이미지 뿌려주기  -->

							</figure>
						</div>
					 
					</div>
					<p style="text-align:center">
						<font style="font-family: 'jua'; font-size: 16px;">
							<div style="margin-bottom: 10%;">
									<textarea name="content" id="content" class="content" onkeyup="xSize(this)" rows="30"
											style="resize:inherit;width:100%;height:200px;overflow-y:hidden" readonly>
											${e_vo.getBoard_Content()}
									</textarea>
									<script>
										function xSize(e)
										{
											e.style.height = '1px';
											e.style.height = (e.scrollHeight + 12) + 'px';
										}
									</script>
							</textarea>
							</div>
						</font>
						<p style="text-align: center;">
						<span style="color:#2f7fa6; font-size: 15px;">이벤트 시작 :</span><span style="color:red">${e_vo.getEVT_START_DT()}</span> ~ 
						<span style="color:#2f7fa6; font-size: 15px;">이벤트 종료 :</span><span style="color: red;">${e_vo.getEVT_END_DT()}</span> 
						</p>
					</p>
				<div style="border-bottom: 2px solid #dbdbdb; text-align:center; padding-bottom:5%">
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:55px; display:block;">3.5</span>
							<h4 class="intro-h4" style="display:inline">
								평균 평점
							</h4>
						</article>
					</div>
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:25px; display:block;">1588-8282</span>
							<h4 class="intro-h4" style="display:inline">
								연락처
							</h4>
						</article>
					</div>
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:15px; display:block;">${e_vo.getBoard_Zipcode()} ${e_vo.getBoard_Address()} ${e_vo.getBoard_Address_Detail()} ${e_vo.getBoard_Address_etc()}</span>
							<h4 class="intro-h4" style="display:inline">
								주소
							</h4>
						</article>
					</div>
				</div>
							<!-- KAKAO MAP -->
				<article class="column col4">
					<h2 class="col_tit" style="text-align: center;"> MAP</h2>
					<div id="map" style="border-radius: 10px;"></div>
				</article>
					 
					 <br>
					 <div style="margin-right: 3%;">
						<c:if test="${e_vo.getBoard_Id() eq session_id}">
							<a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a>
							<a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
						</c:if>
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev?page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
						</div>
				<section style="padding:3%;">
					<form method="post" action="#">
						<div class="col-12">
							<p class="star_rating" style="display:inline">
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						</p>
							<textarea name="reply" id="reply" rows="4" style="resize:none;"></textarea>
							<a style="float:right; font-size:0.9rem;">등록</a>
						</div>
					</form>
				</section>
				<article class="column col6">
					<span style="font-size:35px; display:block">5.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">4.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">3.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">2.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
			
			
			
			


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		
			
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af"></script>
<script>
	//평점
	$( ".star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
	});

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
</script>

<script>

</script>
</body>
</html>