<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pagetext.request.contextPath}/assets/css/event.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/writeForm.css">
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
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<p></p>
		<!-- Main -->
		<div id="main">
	
			<div class="tagManager">
				<nav class="tagNav">
					<div class="tagNav-div1">
						<a class="tagNav-div-a" href="${pageContext.request.contextPath}/eventboard/EventWriter.ev">이벤트등록</a>
					</div>
				</nav>
			</div>
			<!-- sideBar -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
				<!-- Header -->		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>


	<section class="wrapper special">
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
		 				alert("등록된 게시물이 없습니다.");
		 				check=true;
		 			}
		 			for(let i=0; i<eventArray.length;i++){
		 				content+="<li><a href='${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num="+eventArray[i].board_Num+"&page="+page+"'><img src='${pageContext.request.contextPath}/app/eventFilesUpload/"+eventArray[i].file_name+"'onerror='noimage(this)'>";
		 				/* content+="<dl><dd class='#'>"+eventArray[i].board_Title+"</dd></dl><dl><dd class='#'>"+eventArray[i].board_Address+"</dd></dl></a></li>"; */
		 				content+="</a></li>";
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