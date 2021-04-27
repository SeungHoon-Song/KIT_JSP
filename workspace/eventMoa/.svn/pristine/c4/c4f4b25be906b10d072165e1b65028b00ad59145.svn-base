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
		a.star {color: #777;}
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
			margin: 0;
			/* width: 10%;
			padding: 0; */
		}
		</style>
	</head>
	
	<body class="is-preload">
		<c:set var="e_vo" value="${e_vo}"/>
		<c:set var="replyList" value="${replyList}"/>
		<c:set var="files" value="${files}"/>
		<c:set var="replyStar" value="${replyStar}"/>
		
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
							<!-- <a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a> -->
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
									<textarea name="content" id="content" class="content" onkeyup="xSize(this)" rows="30" style="resize:inherit;width:100%;overflow-y:hidden" readonly>${e_vo.getBoard_Content()}</textarea>
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
						<c:if test="${replyStar eq null}">
							<span style="font-size:18px; display:block;">등록된 평점이 없습니다.</span>
						</c:if>
						<c:if test="${replyStar != null}">
							<span style="font-size:55px; display:block;">${replyStar}</span>
						</c:if>
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
							<!-- <a href="${pageContext.request.contextPath}/eventboard/EventBoardModify.ev?board_Num=${e_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a> -->
							<a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
						</c:if>
						<a href="${pageContext.request.contextPath}/eventboard/EventBoardList.ev?page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
					</div>
			
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
							<textarea name="content" id="reply" rows="4" style="resize:none;" readonly="readonly">
							로그인 후 댓글을 작성하실 수 있습니다.</textarea>
						</c:if>
						<c:if test="${session_id != null }">
							<textarea name="reply_Content" id="reply" rows="4" style="resize:none;">10자 이상, 300자 이내 작성</textarea>
							<span style="color:#aaa;" id="counter">10자 이상 (0 / 최대 300자)</span>
							<button id="dayToBtn" style="float:right; font-size:0.9rem;" onclick="insertReply()">등록</button>
						</c:if>
						</div>
					</form>
					
				</section> 
				<div id="reCon">

				</div>
			
			
			


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

			<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<!-- 유효성 -->
<script>
	var replyForm = document.replyForm;

	$('#reply').keyup(function (e){
				var reply_Content = $(this).val();
				$('#counter').html("("+reply_Content.length+" / 최대 300자)");    //글자수 실시간 카운팅

				if (reply_Content.length > 300){
					alert("최대 300자까지 입력 가능합니다.");
					$(this).val(reply_Content.substring(0, 300));
					$('#counter').html("(300 / 최대 300자)");
				}
			});
</script>
			
<script>
	function deleteBoard(){
		var conY = confirm('정말 삭제 하시겠습니까? 삭제하게 되면 되돌릴 수 없습니다.');
		if(conY) {
			boardForm.submit();
		}
		else {
			alert('삭제 취소 하셨습니다.');
			return;
		}
	}
	//평점

	$( ".star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
	});
	</script>

<!--  댓글 script -->
<script>
	$(document).ready(function(){getList();});
		var cnt = 0;
		var replyContent = $("#reCon");
		var board_Num = "${e_vo.getBoard_Num()}";
		var reply_Date = "${reply.getReply_Date()}";
		var id = '${session_id}';

		function getList(){
	 		
		 	$.ajax({
				url : contextPath + "/eventboard/EventReplyList.ev?board_Num=" + board_Num,
				type: "get",
		 		contentType: "application/json",
		 		success: showList
		 	});
	 	}
	 	function showList(list){		
			
			var content = "";
			var replyArray=JSON.parse(list);
			if(JSON.parse(list).length==0){
				content += "<article class='column col6'> <span style='font-size:35px; display:block;'></span>";
						content += "<p class='star_rating' style='display:inline;'><a class='star'>댓글이 없습니다.</a></p>";
						content += "<span class='content'>처음으로 댓글을 달아보는건 어떨까요?</span>";
						content += "<p class='col_desc'></p></article>";
				$("#reCon").html(content);
			}
			else {
				content = "";
			}
				for(let i=0; i<replyArray.length;i++){
					var star = replyArray[i].reply_Star;
					var r_content = replyArray[i].reply_Content;
					var r_num = replyArray[i].reply_Num;
					var year = replyArray[i].reply_Date.substr(0,4);
					var months = replyArray[i].reply_Date.substr(5,2);
					var day = replyArray[i].reply_Date.substr(8,2);
					var r_id = replyArray[i].user_Id;
						content += "<article class='column col6'> <span style='font-size:35px; display:block;'></span>";
						content += "<p class='star_rating' style='display:inline;'><a class='star'>"+star+"</a></p>";
						content += "<span class='content'>"+ r_content +"</span>";
						content += "<span id='writer' class='date'>작성일: "+year+"-"+months+"-"+day+"</span>";
						content += "<span id='writer'>작성자: "+ r_id+"</span>";
					if(r_id == id){
						content += "<br><button id='dayToBtn' style='float:right; font-size:0.9rem;' onclick='javascript:deleteReply("+r_num+")'>삭제</button>"
					} 
						content += "<p class='col_desc'></p></article>";
				}		
		   $("#reCon").html(content);
	   }

	var score = 1;
	function insertReply() {
		score = $('.on').length;
		
		var reply_Content = $("textarea[name='reply_Content']").val();

		if(replyForm.reply_Content.value.length > 300 || replyForm.reply_Content.value.length == "" || replyForm.reply_Content.value.length < 10) {
			alert("글자 수는 10자 이상 300자 이내로 작성하셔야 합니다.");
			return;
		}
			$.ajax({
				url : contextPath + "/eventboard/EventReplyAdd.ev",
				type : "post",
				data : {"reply_Content" : reply_Content, "board_Num" : board_Num, "reply_Date" : reply_Date, "reply_Star" : score},
				dataType : "text",
				success : function(result){
					alert(result);
					getList();
				}
			});
	}
	function deleteReply(reply_Num){
		var conX = confirm('정말 삭제 하시겠습니까?');
		if(conX) {
			$.ajax({
				url : contextPath + "/eventboard/EventReplyDeleteOk.ev",
				type : "post",
				data : {"reply_Num" : reply_Num},
				dataType : "text",
				success : function(result){
					alert(result);
					getList();
				}
			});
		}
	}
		
	</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af&libraries=services,clusterer,drawing"></script>
	   <script>
	      var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	      var eventAddressesJSON = "";
	      var geocoder = new kakao.maps.services.Geocoder();

	      $.ajax({
	         url : contextPath + "/map/getEventAddress.map",
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