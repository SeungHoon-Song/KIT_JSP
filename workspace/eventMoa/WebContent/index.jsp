<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	team 	: EVENT MOA
	auth 	: 킹기훈 
	작업		: 2021-03-23
	작업내역	: 
			> 메인 슬라이드 사진 (사진 사이즈는 맞춤형 통일) 구현완료  
			> section 정리 -> elements에 넣음
			> footer 수정 
			> search-bar style 생성 	
			> KAKAO MAP 지도 생성
			
    *작업예정	: 
    		> *Bug == 슬라이드 next , previous icon 
    		> search-bar 카테고리 생성
    		> 검색바 카테고리 
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
	</head>
	
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">


				<!-- Header -->		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
					
					
			<!-- Slider -->
			<section id="banner">
				<h3 class="ir_su">  </h3>
				<article class="column col4">
					<h4 class="col_tit" style="text-align: right;"> 이벤트 모아 </h4>
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
			
		<article class="column col4">
			<h2 class="col_tit" style="text-align: center;"> MAP</h2>
			<div id="map" style="width:900px;height:900px;"></div>
		</article>
			 
			 <br>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

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
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af"></script>
        <script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도 타입 컨트롤을 지도에 표시합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

function getInfo() {
    // 지도의 현재 중심좌표를 얻어옵니다 
    var center = map.getCenter(); 
    
    // 지도의 현재 레벨을 얻어옵니다
    var level = map.getLevel();
    
    // 지도타입을 얻어옵니다
    var mapTypeId = map.getMapTypeId(); 
    
    // 지도의 현재 영역을 얻어옵니다 
    var bounds = map.getBounds();
    
    // 영역의 남서쪽 좌표를 얻어옵니다 
    var swLatLng = bounds.getSouthWest(); 
    
    // 영역의 북동쪽 좌표를 얻어옵니다 
    var neLatLng = bounds.getNorthEast(); 
    
    // 영역정보를 문자열로 얻어옵니다. ((남,서), (북,동)) 형식입니다
    var boundsStr = bounds.toString();
    
    
    var message = '지도 중심좌표는 위도 ' + center.getLat() + ', <br>';
    message += '경도 ' + center.getLng() + ' 이고 <br>';
    message += '지도 레벨은 ' + level + ' 입니다 <br> <br>';
    message += '지도 타입은 ' + mapTypeId + ' 이고 <br> ';
    message += '지도의 남서쪽 좌표는 ' + swLatLng.getLat() + ', ' + swLatLng.getLng() + ' 이고 <br>';
    message += '북동쪽 좌표는 ' + neLatLng.getLat() + ', ' + neLatLng.getLng() + ' 입니다';
    
    // 개발자도구를 통해 직접 message 내용을 확인해 보세요.
    // ex) console.log(message);
}
</script>
	</body>
</html>