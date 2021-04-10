<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pagetext.request.contextPath}/assets/css/event.css">
		
		<style>
		
		@media screen and (max-width: 589px) {
		section.special, .content ul {
			padding: 0px;
		}
		.content > ul li {
			width: 100%;	
		}
		
		ul > li dl {
			text-align: center;
			margin: 0 0 1em 0;
			
		}
		
		.pmobi_glist dl dd { 
			    width: 100%;
			    margin: 0px;
			    padding: 0px;
			    font-size: 15px;
			    overflow: visible;
			}
		
		</style>
		
	</head>
	
	<body class="is-preload">
<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
	
	<section id="" class="wrapper special">
		<div class="pmobi_glist">
			<div class="detailnfo,showstep1">
				<div class= ""> 
		 			<div class="content">
		<ul id="eventList"></ul>
					</div>
				</div>
			</div>
		</div>
		<a href="#" class="btn_open">더보기</a>
		<!-- <a href="#" class="btn_close hide">감추기</a> -->
</section>
</div>
	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
	</body>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
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
		 				alert("없습니다.");
		 				check=true;
		 			}
		 			for(let i=0; i<eventArray.length;i++){
		 				content+="<li><a href=''><img src='"+eventArray[i].file_name+"'onerror='noimage(this)'>";
		 				content+="<dl><dt id='title'>간 판</dt><dd class='#'>"+eventArray[i].board_Title+"</dd></dl><dl><dt id='title' class='glist_dt_T2'>지 역</dt><dd class='#'>"+eventArray[i].board_Location+"</dd></dl></a></li>";
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
	 		console.log("sad")
	 		getList();
	 	});
	 	
	</script>
	
</html>