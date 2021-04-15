<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
-->
<html>
	<head>
		<title>포인트충전 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/point/pointGuide.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/point/PopUpLayer.css"/>
		<style>
		h2, h3{
			font-family: Jua;
			font-size: 30px;
		}
		h2{
			font-family: Jua;
			font-size: 26px;
		}
		
/* 이용권 가이드 */
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
		
			<section id="five" class="wrapper special">
			<%-- <div class="col-12"><span class="image fit"><img src="${pageContext.request.contextPath}/images/banner/ADbanner1.jpg" height="200px;" alt="" /></span></div> --%>
				<h3 style="font-family: jua; font-size: 50px;"> 포인트 충전소 </h3>
						<ul class="faces">
							<li>
								<a id="charge" href="5000">
								<span class="image" style="font-family: Jua; font-size: 20px;">포인트 충전
								<img src="${pageContext.request.contextPath}/images/point/point_dia.png" alt="" style="width:100px;" />
								</span>
								<h3>적립포인트 5,000p</h3>
								<p style="font-family: Jua; font-size:18px; font-weight:bold;"> 결제금액 : 5,000원 </p>
								</a>
							</li>
							<li>
								<a id="charge" href="10000">
								<span class="image" style="font-family: Jua; font-size: 20px;">포인트 충전
								<img src="${pageContext.request.contextPath}/images/point/point_dia.png" alt="" style="width:100px;" />
								</span>
								<h3>적립포인트 10,000p</h3>
								<p style="font-family: Jua; font-size:18px; font-weight:bold;"> 결제금액 : 10,000원 </p>
								</a>
							</li>
							<li>
								<a id="charge" href="30000">
								<span class="image" style="font-family: Jua; font-size: 20px;">포인트 충전
									<img src="${pageContext.request.contextPath}/images/point/point_dia.png" alt="" style="width:100px;" />
								</span>
								<h3>적립포인트 30,000p</h3>
								<p style="font-family: Jua; font-size:18px; font-weight:bold;"> 결제금액 : 30,000원 </p>
								</a>
							</li>
						</ul>
						</section>
						
						<!-- 이용권 가이드 -->
						<div class="zpayGBox">
							<ul class="zpayGBlist">
								<li class="zpayGBarotest">
									<span class="zGDpoint">- 이용가능한 콘텐츠</span>
										 : 이벤트 등록 가능 / 추가 예정 / 이벤트 등록 / 기간 연장 / 상단 노출
								</li>
								<li class="zpayGVD">
									<span class="zGDpoint">- 포인트 이용 유의사항</span>
										 : 수정 예정 / <br>			
								</li>
								<li class="zpayGVD">
									<span class="zGDpoint">- 포인트 가격 할인 및 적립</span>
										 : 제휴사 할인 및 적립 적용 <br>			
								</li>
							</ul>
						</div>
				
				<!-- 결제수단 -->		
				  <table>
					  <tbody>
				  
					  </tbody>
				  </table>
						
						<!-- 이용권 공통 유틸버튼   -->
					<div id="two" style="text-align: center; vertical-align: middle; ">
     					  <div class="button primary small" style="width: auto;">
        				<a href="${pageContext.request.contextPath}/">결제 오류 FAQ ></a>
        				</div>
     					  <div class="button primary small" style="width: auto;">
         					<!-- 페이지 수 -->&nbsp;
         					<a href="${pageContext.request.contextPath}/">결제 및 환불 약관 ></a>
             		  	</div>
      					  <div class="button primary small" style="width: autol;">
        				<a href="${pageContext.request.contextPath}/">제휴사 체결 ></a>
              		 	</div>
					</div>
					
					<p>&nbsp;</p>
						
				</div>

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	<script type="text/javascript">
		var $j = jQuery;	
	
		$j(document).ready(function() {
			//$j('.h_bot').hide(); // 메뉴 및 로그인영역 숨김처리
	
			$j('input:checkbox[name="chkGrade"]').each(function() {
				this.checked = false;
			});
		});
	
		//이용약관 팝업
		function past1PopWindow() {
			var _width = '1100';
			var _height = '700';
		 
			// 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
			var popupX = (1100 / 2) - (200 / 2);
			var popupY= (700 / 2) - (300 / 2);
	
			var _left = Math.ceil(( window.screen.width - _width )/2);
			var _top = Math.ceil(( window.screen.width - _height )/0); 
			
			window.open(getContextPath() + '/user/point/pointTerm.jsp', '', 'status=no, height=700, width=1100, left='+ popupX + ', top='+ popupY);
		}
		
		
		function getContextPath() {
			var hostIndex = location.href.indexOf(location.host) + location.host.length;
			return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex));
		}
		function Form_Submit()
		{
			var vVal = document.Form.pcode.value;
			document.Form.submit();
		}
	</script>
	</body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script>
		$("a#charge").on("click", function(e){
			e.preventDefault();
			IMP.init('imp98100712');
			var contextPath = "${pageContext.request.contextPath}";
			var point = parseInt($(this).attr("href"));
			//console.log(point);
			
			IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				pay_method: 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '결제테스트',
				amount : point,
				buyer_email : 'tedhan1204@gmail.com',
				buyer_name : '한동석',
				buyer_tel : '010-1234-5678',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456',
			}, function(rsp) {
				console.log(rsp);
				if ( rsp.success ) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					alert("감사합니다. 결제가 완료되었습니다.");
					location.href = contextPath + "/PointChargeAction.us?point="+point;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
			});
			
		})
		
	</script>
</html>













