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

		#dayToBtn {
			cursor: pointer;
			height: 30%;
			width: 10%;
			margin: 0;
			padding: 0;
		}
		</style>
	</head>
	
	<body class="is-preload">
		<c:set var="e_vo" value="${e_vo}"/>
		<c:set var="replies" value="${replies}"/>
		<c:set var="files" value="${files}"/>
		
		<c:set var="session_id" value="${session_id}" />
		
		<c:set var='userStatus' value="false"></c:set>
		<c:if test="${session_id ne null }">
			<c:set var='userStatus' value='true' />
		</c:if>
	
		<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
				<table>
					<div style="margin-right: 3%;">
						<c:if test="${e_vo.getBoard_Id() eq session_id}">
							<a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a>
							<a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
						</c:if>
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev?page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
					</div>
				</table>
				<form name="boardForm" method="post" action="${pageContext.request.contextPath}/eventboard/EventDeleteOk.ev">
					<input type="hidden" name="board_Num" value="${e_vo.getBoard_Num()}">
					<input type="hidden" name="page" value="${page}">
				</form>

						<div class="login_message">
							<h1>${e_vo.getBoard_Title()}</h1>
							<br>
							<p style="text-align: left;">
								DATE : <span style="color:#2f7fa6">
									${e_vo.getBoard_Date()}
										</span>
								<br>
								Writer : 
									<span style="color: #2f7fa6;">
										${e_vo.getBoard_Id()} 
									</span>
								<br>
								
							</p>
							
						</div>
					<!-- 이미지 슬라이드 -->
					<div class="slider" style="width:100%; height: 100%; margin:0 auto; margin-top: 10%;">
						<div>
							<figure>
								<!-- 이미지 뿌려주기  -->
								<img src='${pageContext.request.contextPath}/app/eventFilesUpload/${e_vo.getFile_name()}'>
							</figure>
						</div>
					 
					</div>
					<p style="text-align:center">
						<font style="font-family: 'jua'; font-size: 16px;">
							<div style="margin-bottom: 10%; margin-top: 10%;">
									<textarea name="content" id="content" class="content" onkeyup="xSize(this)" rows="30"
											style="resize:inherit;width:100%;overflow-y:hidden" readonly>
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
							<span style="font-size:25px; display:block;">
								${e_vo.getBoard_CallNumber()} 
							<br>
								${e_vo.getBoard_PhoneNumber()}
							</span>
							<h4 class="intro-h4" style="display:inline">
								연락처
							</h4>
						</article>
					</div>
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:15px; display:block;">${e_vo.getBoard_Zipcode()} 
								<br>${e_vo.getBoard_Address()} 
								<br>${e_vo.getBoard_Address_Detail()} ${e_vo.getBoard_Address_etc()}</span>
							<h4 class="intro-h4" style="display:inline">
								주소
							</h4>
						</article>
					</div>
				</div>

			<!-- KAKAO MAP -->
			<c:if test="${userStatus eq true}">
				<article class="column col4">
					<h2 class="col_tit" style="text-align: center;">MAP</h2>
					<div id="map" style="border-radius: 10px;"></div>
				</article>
			</c:if>
					 <br>
					 
					 <div style="margin-right: 3%;">
						<c:if test="${e_vo.getBoard_Id() eq session_id}">
							<a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a>
							<a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
						</c:if>
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev?page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
					</div>
						<!-- 댓글 -->
			<!-- <section style="padding:3%; margin-top: 5%;">
				<form method="post" action="#" name="replyForm">
					<table width="700">
						<tr>
							<td width="100" rowspan="2">${session_id} ></td>
							<td width="500" height="50" colspan="2">
								<div id="rating" align="center">
									<span>
										<img id="image1" onmouseover="show(1)" onclick="mark(1)" onmouseout="noShow(1)" src=" contextPath + '/images/reply/star0.png'">
										<img id="image2" onmouseover="show(2)" onclick="mark(2)" onmouseout="noShow(2)" src=" contextPath + '/images/reply/star0.png'">
										<img id="image3" onmouseover="show(3)" onclick="mark(3)" onmouseout="noShow(3)" src=" contextPath + '/images/reply/star0.png'">
										<img id="image4" onmouseover="show(4)" onclick="mark(4)" onmouseout="noShow(4)" src=" contextPath + '/images/reply/star0.png'">
										<img id="image5" onmouseover="show(5)" onclick="mark(5)" onmouseout="noShow(5)" src=" contextPath + '/images/reply/star0.png'">
									</span>
									<br/><span id="startext">평가하기</span>
								</div>
								<input type="hidden" name="star" />
							</td>
							<td width="100" rowspan="2"><input type="submit" name="submit" value="submit"></td>
						</tr>
						<tr>
							<c:if test="${session_id == null}" >
								<td width="500" height="100" colspan="2"><textarea name="content" cols="65" rows"7" readonly="readonly">
									로그인 후 이용 가능한 서비스 입니다.</textarea></td>
							</c:if>
							<c:if test="${session_id != null }">
								<td width="500" height="100" colspan="2"><textarea name="content" cols="65" rows="7"></textarea></td>
							</c:if>
						</tr>
					</table>
				</form>
				<c:if test="${cntReply != 0 }">
					<table width="700">
						<c:forEach var="reply_vo" items="${replies}">
							<tr>
								<td rowspan="3" width="100">${reply_vo.getUser_Id()}</td>
								<td width="550" height="20">
									<font size="5" border="border">${reply_vo.getUser_Id()}</font> &nbsp;&nbsp;
									<font size="1">${reply_vo.getReply_Date()}</font>
								</td>
								<td width="50">
									<c:if test="${session_id == reply_vo.getUser_Id()}" > 
										<a href='javascript:deleteReply(" + reply_vo.getReply_Num() + ")'>[삭제]</a>
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:if> -->
						<!-- 댓글 -->
				<section style="padding:3%; margin-top: 5%;">
					<form method="post" action="#" name="replyForm">
						<div class="col-12">
							<p class="star_rating" style="display:inline">
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						</p>
					</br>
						<span id="startext">평가하기</span>
						<c:if test="${session_id == null}" >
							<textarea name="reply_Content" id="reply" rows="4" style="resize:none;" readonly="readonly">
							로그인 후 이용 가능한 서비스 입니다.</textarea>
						</c:if>
						<c:if test="${session_id != null }">
							<textarea name="reply_Content" id="reply" rows="4" style="resize:none;"></textarea>
							<button id="dayToBtn" style="float:right; font-size:0.9rem;" >등록</button>
						</c:if>
							<!-- <textarea name="reply" id="reply" rows="4" style="resize:none;"></textarea> -->
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

			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af&libraries=services,clusterer,drawing"></script>
<script>
	function deleteBoard(){
		boardForm.submit();
	}
	//평점
	$( ".star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
	});
	</script>

	<!-- 댓글 -->
	<script>
		var locked = 0;

		function show(star) {
			if (locked) {
				return;
			}

			var i;
			var image;
			var el;
			var e = document.getElementById('startext');
			var stateMsg;

			for (i = 1; i <= star; i++ ) {
				image = 'image' + i;
				el = document.getElementById(image);
				el.src = contextPath + "/images/reply/star1.png";
			}

			switch (star) {
				case 1:
					stateMsg = "별로예요";
					break;
				case 2:
					stateMsg = "기대하지 말아요";
					break;
				case 3:
					stateMsg = "보통이예요";
					break;
				case 4:
					stateMsg = "기대해도 좋아요";
					break;
				case 5:
					stateMsg = "너무 좋은 이벤트였어요!";
					break;
				default:
					stateMsg = "";
			}
			e.innerHTML = stateMsg;
		}

		function noShow(star) {
			if (locked){
				return;
			}
			var i;
			var image;
			var el;
			
			for (i = 1; i <= star; i++ ){
				image = 'image' + i;
				el = document.getElementById(image);
				el.src = contextPath + "/images/reply/star0.png";
			}
		}

		function lock(star) {
			show(star);
			locked = 1;
		}

		function mark(star) {
			lock(star);
			alert("선택2"+star);
			document.replyForm.star.value = star;
		}
		
		function deleteReply(reply_Num){
			$.ajax({
				url : pageContext + "/eventboard/eventboardReplyDeleteOk.bo",
				type : "post",
				data : {"reply_Num" : reply_Num},
				dataType : "text",
				success : function(result){
					alert(result);
					getList();
				}
			});
		}
		
		function updateReply(num){
			if(!check){
				var textarea = $("textarea#" + num);
				var a_ready = $("a#ready" + num);
				var a_ok = $("a#ok" + num);
				
				textarea.removeAttr("readonly");
				textarea.css("background-color", "rgba(144, 144, 144, 0.075)");
				textarea.css("border", "solid 1px");
				textarea.css("border-color", "#9DC2E5");
				a_ready.hide();
				a_ok.show();
				check = true;
			}else{
				alert("수정 중인 댓글이 있습니다.");
			}
		}
		
		function updateOkReply(reply_Num, seq){
			var content = $("textarea#" + seq).val();
			$.ajax({
				url : pageContext + "/eventboard/eventboardReplyModifyOk.bo",
				type : "post",
				data : {"reply_Num" : reply_Num, "content" : content},
				dataType : "text",
				success : function(result){
					alert(result);
					check = false;
					getList();
				}
			});
		}
	</script>

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
	      var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	      var eventAddressesJSON = "";
	      var pageContext = "${pageContext.request.contextPath}";
	      var geocoder = new kakao.maps.services.Geocoder();
		//   var boardNum = ${e_vo.getBoard_Num()} + "";
	      $.ajax({
	         url : pageContext + "/map/getEventAddress.map",
	        //  url : pageContext + "/map/getEventMap.map",
			// data : boardNum,
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