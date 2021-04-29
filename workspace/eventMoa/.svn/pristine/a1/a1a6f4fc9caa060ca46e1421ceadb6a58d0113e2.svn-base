<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이벤트 모아 (Event Moa)</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="author" content="corner3499">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/title-icon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/map.css">
	<link rel="stylesheet" href="${pagetext.request.contextPath}/assets/css/event.css">
</head>
<!-- test -->

<body class="is-preload">

	<c:set var="session_id" value="${session_id}" />

	<c:set var='userStatus' value="false"></c:set>
	<c:if test="${session_id ne null }">
		<c:set var='userStatus' value='true' />
	</c:if>


	<!-- Header -->
	<jsp:include
		page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
	<!-- Main -->
	<div id="main">

		<!-- sideBar -->
		<jsp:include
			page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>

		<!-- Header -->
		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>

		<!-- Slider -->
		<section id="banner">
			<h3 class="ir_su"></h3>
			<article class="column col4">
				<h2 class="col_tit" style="text-align: center;">이벤트 모아</h2>
				<p class="col_desc"></p>
				<!-- 이미지 슬라이드 -->
				<div class="slider">
					<div>
						<figure>
							<img src="${pageContext.request.contextPath}/images/banner/banner05.jpg"
								alt="이미지4">
							<figcaption>
								<em> 이벤트 모아  </em><span> 회원가입시 무료 300포인트 지급</span>
							</figcaption>
						</figure>
					</div>
					<div>
						<figure>
							<img src="${pageContext.request.contextPath}/images/banner/banner02.jpg"
								alt="이미지2">
							<figcaption>
								<em> 이벤트 모아  </em><span> 댓글 이벤트 </span>
							</figcaption>
						</figure>
					</div>
					<div>
						<figure>
							<img src="${pageContext.request.contextPath}/images/banner/banner03.jpg"
								alt="이미지3">
							<figcaption>
								<em> 이벤트 모아  </em><span> 홍보하기 쉽고 빠른 사이트. </span>
							</figcaption>
						</figure>
					</div>
					<div>
						<figure>
							<img src="${pageContext.request.contextPath}/images/banner/banner04.jpg"
								alt="이미지4">
							<figcaption>
								<em> 이벤트 모아  </em><span> Plan Your ...</span>
							</figcaption>
						</figure>
					</div>
					<div>
						<figure>
							<img src="${pageContext.request.contextPath}/images/banner/banner05.jpg"
								alt="이미지4">
							<figcaption>
								<em> 이벤트 모아  </em><span> 회원가입시 무료 300포인트 지급</span>
							</figcaption>
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

		<br>
				<section class="wrapper special">
					<article class="column col4">
					<h2 class="col_tit" style="text-align: center;">지금 따끈따끈 올라온 이벤트
					</h2>
				
					<div class="pmobi_glist">
						<div class="detailnfo,showstep1">
							<div class= ""> 
								 <div class="content">
									<ul id="eventList">
										
									</ul>	
								</div>
							</div>
						</div>
					</div>
					<a href="#" class="btn_open">더보기</a>
				</article>
				</section>




		<!-- KAKAO MAP -->
			<article class="column col4">
				<h2 class="col_tit" style="text-align: center;">MAP</h2>
				<div id="map" style="border-radius: 10px;"></div>
				<c:if test="${userStatus eq false}">
				<span style="font-size: 11px;">* 로그인을 하시면 사용자 주변을 확인하실 수 있습니다. :)</span>
				</c:if>
			</article>

	</div>
	<!-- div id="main" end -->

	<!-- One -->
	<div id="mainSection">
		<section id="one" class="wrapper spotlight">
			<ul class="grid-icons">
				<li>
					<div class="inner">
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev">
							<span class="icon solid fa-check major"></span>
							<h3>최신 이벤트</h3>
						</a>
					</div>
				</li>
				<li>
					<div class="inner">
						<a
							href="${pageContext.request.contextPath}/mypage/myPage.us">
							<span class="icon solid fa-user-lock major"></span>
							<h3>내 정보</h3>
						</a>
					</div>
				</li>
				<li>
					<div class="inner">
						<a href="${pageContext.request.contextPath}/freeboard/FreeBoardList.bo?category=recent">
							<span class="icon solid fa-comment major"></span>
							<h3>자유게시판</h3>
						</a>
					</div>
				</li>
				<li>
					<div class="inner">
						<a href="https://forms.gle/eFAe9L6vn7PR4XgUA"> <span
							class="icon solid fa-cog major"></span>
							<h3>문의하기</h3>
						</a>
					</div>
				</li>
			</ul>

		</section>
	</div>
	<!-- Footer -->
	<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>


	   <script>
	      //이미지 슬라이더
	      $(".slider").slick({
	         dots : true,
	         autoplay : true,
	         autoplaySpeed : 3000,
	         arrows : true,
	         responsive : [ {
	            breakpoint : 768,
	            settings : {
	               autoplay : false,
	            }
	         } ]
	      });
	   </script>
	   	<script>
			var page=1;
			var cnt = 0;
			var ul = $("#eventList");
			
			function getList(){
				 var check=false;
				 var content = ""
				 $.ajax({
					 url:"${pageContext.request.contextPath}/eventboard/EventBoardListOK.ev",
					 dataType:"text",
					 data:{"page":page},
					 contentType: "application/json",
					 success: function(list){
						 //for(){}
						 var eventArray=JSON.parse(list);
						 if(JSON.parse(list).length==0){
							 alert('등록된 이벤트가 없습니다.');
							 check=true;
						 } else { 
							 for(let i=0; i<eventArray.length;i++){
								 content+="<li><a href='${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num="+eventArray[i].board_Num+"&page="+page+"'><img src='${pageContext.request.contextPath}/uploadFolder/eventFilesUpload/"+eventArray[i].file_name+"'onerror='noimage(this)'>";
								 /* content+="<dl><dd class='#'>"+eventArray[i].board_Title+"</dd></dl><dl><dd class='#'>"+eventArray[i].board_Address+"</dd></dl></a></li>"; */
								 content+="</a></li>";
							 }
						 }
						 
						 ul.append(content);
					 }	
				 });
				 if(check){
					 return;
				 }
				 page+=1;
			 }
			 getList();
			 $(".btn_open").on("click",function(e){
				 //a테크 이동 막기
				 e.preventDefault();
				 getList();
			 });
			 
		</script>
		
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af&libraries=services,clusterer,drawing"></script>

	   <script>
	      var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	      var eventAddressesJSON = "";
	      var pageContext = "${pageContext.request.contextPath}";
	      var geocoder = new kakao.maps.services.Geocoder();
	      var myHouse = "테스트";
	      $.ajax({
	         url : pageContext + "/map/getEventAddress.map",
	         dataType : "text",
	         success : function(addresses){
	            eventAddressesJSON = JSON.parse(addresses);
	            geocoder.addressSearch(eventAddressesJSON[0].eventAddress, function(result, status) {
	               coords = new kakao.maps.LatLng(result[0].x, result[0].y);
	               mapOption = {
	                  center : new kakao.maps.LatLng(coords.La, coords.Ma), // 지도의 중심좌표
	                  level : 3
	               };
	               var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	               
	               var cnt = 0;
	               for(let i=0; i<eventAddressesJSON.length; i++){
	                  geocoder.addressSearch(eventAddressesJSON[i].eventAddress, function(result, status) {
	                     var mapObject = new Object();
	                      // 정상적으로 검색이 완료됐으면 
	                      if (status === kakao.maps.services.Status.OK) {
	                        coords = new kakao.maps.LatLng(result[0].x, result[0].y);
	                        //마커를 표시할 위치와 title 객체 배열입니다 
	                           mapObject.title = eventAddressesJSON[cnt].eventTitle;
	                           mapObject.latlng = new kakao.maps.LatLng(coords.La, coords.Ma);
	                           cnt += 1;
	      
	                           //마커 이미지의 이미지 주소입니다
	                           var imageSrc = "";
	                           if(cnt == 1){//회원의 주소일 때
	                              imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	                           }else{//이벤트 주소일 때
	                              imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	                           }
	      
	                              // 마커 이미지의 이미지 크기 입니다
	                              var imageSize = new kakao.maps.Size(24, 35);
	      
	                              // 마커 이미지를 생성합니다    
	                              var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	      
	                              // 마커를 생성합니다
	                              var marker = new kakao.maps.Marker({
	                                 map : map, // 마커를 표시할 지도
	                                 position : mapObject.latlng, // 마커를 표시할 위치
	                                 title : mapObject.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	                                 image : markerImage
	                              // 마커 이미지 
	                              });
	                         }
	                  });
	               }
	            });
	         }
	      });
		
	</script>
</body>
</html>