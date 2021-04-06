<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<style>
		.field-icon {
  			float: right;
  			margin-right: 15px;
  			margin-top: -25px;
  			position: relative;
  			z-index: 2;
  			}
  			
		p { position:relative; width:100%; height:50px; } /* 기본세팅 */
		p input { box-sizing:border-box; padding:20px 0 0; width:100%; height:100%; border:0 none; color:#595f63; outline:none; }
		p label { position:absolute; left:3%; bottom:10%; width:100%; height:100%; text-align:left; pointer-events:none; }
		p label span { position:absolute; left:0; bottom:5px; transition:all .3s ease; }
		p input:focus + label span, 
		p input:valid + label span { transform:translateY(-150%); font-size:14px; color:#5fa8d3; }  
		/* input에 글을 입력하고 포커스가 지나간 상태에서 제어하려면 valid 선택자를 써야한다. */
		/* 포커스 될 때 label span(name)이 위로 올라감 */
		p input:focus + label::after,
		p input:valid + label::after { width:100%; transform:translateX(0); }
		</style>
	</head>
	
	<body class="is-preload">
	
	<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
      </c:if>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<header>
		</header>
		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">${session_id} 님의 주소 변경</h1>

				<!-- Content -->
			<div class="contents2" id="myPage">
			<c:if test="${not empty param.update }">
				<c:if test="${not param.update}">
			<script>alert("누락된 항목은 없는지, 입력 사항을 다시 확인해주세요.");</script>
				</c:if>
			</c:if>
			<form name="modifyAddressForm" action="${pageContext.request.contextPath}/user/UserModifyAddressOk.us" method="post">

			
			<div class="row gtr-uniform" id="findFrame">
					<div class="col-12">
						<br>
						<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-bottom: auto;">
						<p>
								<input type="text" name="user_Zipcode" id="user_Zipcode" class="postcodify_postcode5" value="" placeholder="우편번호" readonly/>
						</p>
								<input type="button" id="postcodify_search_button" style="height: 35px;" value="검색"/>
						</ul>
						
						<p>
							<input type="text" name="user_Address" id="user_Address" class="postcodify_address" value="" placeholder="주소" readonly/>
						</p>
						
						<p>
							<input type="text" name="user_Address_DETAIL" id="user_Address_DETAIL" class="postcodify_details" autocomplete="off" required/>
							<label for="user_Address_DETAIL" style="color: silver;"><span>상세주소</span></label>
						</p>
						

						<p>
							<input type="text" name="user_Address_Etc" id="user_Address_Etc" class="postcodify_extra_info" value="" placeholder="참고항목" readonly/>
						</p>					
					</div>
			</div>		
					
				<div class="row gtr-uniform" id="loginFrame">

						<div class="col-12">
							<ul class="actions stacked">
								<li><a href="javascript:modifySubmit();" class="button primary fit">주소 변경</a></li>
							</ul>
						</div>
				</div>
			</form>
			</div>
</div>
	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/visiblePw.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
			<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>

			<script>
			var form = document.modifyAddressForm;
			
			function modifySubmit(){
				var zipcode = $("#user_Zipcode").val();
				var addr = $("#user_Address").val();
				var addrD = $("#user_Address_DETAIL").val();
				
				if(zipcode != "" && addr != "" && addrD != ""){
					form.submit();
				}else{
					alert('참고항목을 제외한 항목을 입력해주세요.');
					return false;
				}
			}
			</script>
				
	</body>
</html>