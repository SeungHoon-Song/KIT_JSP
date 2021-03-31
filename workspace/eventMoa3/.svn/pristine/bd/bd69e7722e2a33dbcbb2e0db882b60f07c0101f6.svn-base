<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	작업내역	: 
> map 사이즈 반응형 조절 
> 검색창 반응형 조절 (검색 버튼을 검색 인풋태그 하단에 width 100%)
> slider 왼쪽 오른쪽 버튼 아이콘 깨짐 현상 수정 , 반응형 사이즈 조절 수정
> 광고 배너 사이즈 통일 (width: 600px; height:337px;)
> header 경로 수정

작업예정 :
> mobile 메인 MAP 표현 못하는 현상
> logo에 main으로 가는 Link 걸기 
> navbar에 검색창 달기
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map.css">
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
					<h2 class="col_tit" style="text-align: center;"> 이벤트 모아 </h2>
					<p class="col_desc"> </p>
					<!-- 이미지 슬라이드 -->
					<div class="slider">
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/ad/ad1.jpg" alt="이미지1">
								<figcaption><em> SNS • 배너 광고 디자인 </em><span> #페이스북 #인스타그램 </span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/ad/ad2.jpg" alt="이미지2">
								<figcaption><em> 카울리 인사이트 </em><span> 광고 소재 제작 Tip</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/ad/ad3.jpg" alt="이미지3">
								<figcaption><em> CROLO </em><span>  배너 디자인 이제 AI에게 맡기세요. </span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" alt="이미지4">
								<figcaption><em> Banner Template </em><span> Plan Your ...</span></figcaption>
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
			
			
			
			
			<!-- KAKAO MAP -->
		<article class="column col4">
			<h2 class="col_tit" style="text-align: center;"> MAP</h2>
			<div id="map"></div>
		</article>
			 
			 <br>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		
			
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af"></script>
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
   
 
</script>

<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.50006529736203, 127.03547036224), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	if(navigator.geolocation){
		
	    navigator.geolocation.getCurrentPosition(function(position) {

	        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
		});
	} else {
		var locPosition = new kakao.maps.LatLng(37.50006529736203, 127.03547036224),
		message = 'geolocation을 사용할 수 없습니다..'
		
		displayMaker(locPosition, message);
	}
	
	function displayMaker(locPosition, message) {
		
		var marker = new kakao.maps.Marker({
			map: map,
			position: locPosition
		});
		
		var iwContent = message, 
		iwRemoveable = true;
		
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removeable : iwRemoveable
		});
	
		infowindow.open(map, marker);
	
		map.setCenter(locPosition);
		
	}
	var positions = [
    {
        content: '<div>코리아IT학원 강남점</div>', 
        latlng: new kakao.maps.LatLng(37.50006529736203, 127.03547036224)
    },
    {
        content: '<div>코리아IT학원 신촌점</div>', 
        latlng: new kakao.maps.LatLng(37.55410558539051, 126.93571109822075)
    },
    {
        content: '<div>코리아IT학원 대구점</div>', 
        latlng: new kakao.maps.LatLng(35.902817019272156, 128.5827827209257)
    },
    {
        content: '<div>코리아IT학원 부산점</div>',
        latlng: new kakao.maps.LatLng(35.35733616857707, 128.98044293168113)
    }
];

for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}
</script>
	</body>
</html>