<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>포인트/적립 내역 | 이벤트 모아 (Event Moa)</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
		#dayToBtn {
			cursor: pointer;
			height: 30%;
			width: 10%;
			margin: 0;
			padding: 0;
		}

		a#btn_open {
			width: 20%;
			text-align: center;
			margin: 0 auto;
			display: inherit;
			margin-bottom: 30%;
		}
		</style>
		
	</head>
	
	<body class="is-preload">
	
	<c:set var="point_vo" value="${point_vo}"/>
	<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
     </c:if>
	 
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>


		<!-- 포인트 충전 / 적립 내역 -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: center;">충전/적립 내역</h2>
				<p class="col_desc"></p>
		    <table>
		 	   <tbody>
				  <tr>
		     	     <td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
		           ${user_Name} 회원님의 포인트 적립 내역입니다.
		            <b><font color="f75151">포인트 적립에 관한 모든 내역</font></b>
		           을 보실 수 있습니다. </td>
	   			 </tr>
	   		 </tbody>
		   </table>
         			<button id="dayToBtn">일별</button> 
         			<button id="dayToBtn">주별</button>
         			<button id="dayToBtn">월별</button>
         			<p></p>
					<table class="alt"	>
						<thead>
							<tr>
								<th></th>
								<th>날짜</th>
								<th>포인트</th>
								<th style="text-align: center;">내역</th>
							</tr>
						</thead>
						<tbody id="receiptList">
						
						</tbody>
					</table>
					<a href="#" class="button" id="btn_open">더보기</a>
					
				</article>
	</section>
		


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
			
	</body>

	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>
		var page=1;
		var cnt = 0;
		var tbody = $("#receiptList");
		
		function getList(){
	 		var check=false;
	 		var content = ""
		 	$.ajax({
		 		url:"${pageContext.request.contextPath}/user/mypage/PointReceiptAction.us",
		 		dataType:"text",
		 		data:{"page":page},
		 		contentType: "application/json",
		 		success: function(list){
		 			//for(){}
		 			var receiptArray=JSON.parse(list);
		 			if(JSON.parse(list).length==0){
		 				alert("결제된 내역이 더 이상 없습니다.");
		 				check=true;
		 			}
		 			for(let i=0; i<receiptArray.length;i++){
		 				content+="<tr><td>"+receiptArray[i].point_Num+"</td>"
						content+="<td>"+receiptArray[i].point_Date+"</td>"
						content+="<td>"+receiptArray[i].point_Amount+"</td>"
						content+="<td>"+receiptArray[i].point_Content+"</td>";
		 				/* content+="<dl><dd class='#'>"+eventArray[i].board_Title+"</dd></dl><dl><dd class='#'>"+eventArray[i].board_Address+"</dd></dl></a></li>"; */
		 				content+="</tr>";
		 			}
		 			
		 			tbody.append(content);
		 		}	
		 	});
		 	if(check){
		 		return;
		 	}
		 	page+=1;
	 	}
	 	getList();
	 	$("#btn_open").on("click",function(e){
	 		//a테크 이동 막기
	 		e.preventDefault();
	 		getList();
	 	});
	 	
	</script>
	
</html>