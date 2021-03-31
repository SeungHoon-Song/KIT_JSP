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
		
			<!-- 이용권 구매 고정바 -->		
				<div id="useBuybar" class="rn_2020useBuybar">
		<!-- 정회원 -->
		<div class="ucnt">
			<div class="numb_select">
				<span class="numbS" id="chk_Cnt">0</span><span>개 상품이 선택되었습니다.</span>
			</div>
			<div class="numb_result">
				<span>결제예정금액 : 총</span><span id="Amount1" class="numbR"></span><span id="Amount2" class="numbR">0</span><span>원</span>
			</div>
			<div class="paymentToll">
				<ul class="paymentToll_list">
					<li>
						<input type="checkbox" id="pay_Consent" name="pay_Consent"><label for="pay_Consent">구매 유의사항을 확인하였고, 이에 동의합니다.</label>
						<a href="#;" onclick="past1PopWindow();" class="lookinner"><button>내용보기</button></a>
						<a href="#;" onclick="goBasket();" class="btnCom btnBasket">장바구니 담기</a>
						<a href="#;" onclick="tts();" class="btnCom btnBuy">구매하기</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- //정회원 -->
		
	</div>
	

			<section id="five" class="wrapper special">
			<div class="col-12"><span class="image fit"><img src="${pageContext.request.contextPath}/images/banner/ADbanner1.jpg" height="200px;" alt="" /></span></div>
				<h3 style="font-family: jua; font-size: 50px;"> 포인트 충전소 </h3>
						<ul class="faces">
							<li>
								<a href="#">
								<span class="image" style="font-family: Jua; font-size: 20px;">포인트 충전
								<img src="${pageContext.request.contextPath}/images/point/point_dia.png" alt="" style="width:100px;" />
								</span>
								<h3>적립포인트 5,000p</h3>
								<p style="font-family: Jua; font-size:18px; font-weight:bold;"> 결제금액 : 5,000원 </p>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="image" style="font-family: Jua; font-size: 20px;">포인트 충전
								<img src="${pageContext.request.contextPath}/images/point/point_dia.png" alt="" style="width:100px;" />
								</span>
								<h3>적립포인트 10,000p</h3>
								<p style="font-family: Jua; font-size:18px; font-weight:bold;"> 결제금액 : 10,000원 </p>
								</a>
							</li>
							<li>
								<a href="#">
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
										 : 이벤트 등록 가능 / 추가 예정 / <br>
										 <span style="display: block; padding-left:114px;"> 이벤트 등록 / 기간 연장 / 상단 노출</span>	
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
</script>
<script type="text/javascript">
	// 선택된 상품 확인 (중복방지)
	function goodsCheck(val) 
	{	
		if(val != '10')
		{
			for (var i=val%2; i<10; i=i+2)
			{
				if (val != i)
				{
					document.frmZocbo.chkGrade[i].checked = false;
				}
			}
		}
	}

	//현재 선택된 상품의 결제금액을 표시해주는 함수
	function SetTxtAmount(val) 
	{		
		var oPreAmount = 0;
		var pcode = "";
		var chk_Sum = 0;
		var chk_Cnt = document.frmZocbo.chkGrade.length;
		var this_pcode = "";

		goodsCheck(val);

		for(var i = 0; i < chk_Cnt; i++)
		{
			if(document.frmZocbo.chkGrade[i].checked == true)
			{
				chk_Sum += 1;
			}
		}

		if (frmZocbo.chkGrade[6].checked) //  
		{
			oPreAmount += 20000;
			document.Form.siteid.value = "M";
			this_pcode = "4,M";

			if (pcode == "") {pcode = this_pcode} else {pcode += ";" + this_pcode}
		}
		if (frmZocbo.chkGrade[7].checked) //  
		{
			oPreAmount += 20000;
			document.Form.siteid.value = "H";
			this_pcode = "4,H";

			if (pcode == "") {pcode = this_pcode} else {pcode += ";" + this_pcode}
		}

		if (frmZocbo.chkGrade[8].checked) // 18000 포인트 
		{
			oPreAmount += 18000;
			document.Form.siteid.value = "M";
			this_pcode = "5,M";

			if (pcode == "") {pcode = this_pcode} else {pcode += ";" + this_pcode}
		}
		if (frmZocbo.chkGrade[9].checked) // 18000 포인트 
		{
			oPreAmount += 18000;
			document.Form.siteid.value = "H";
			this_pcode = "5,H";

			if (pcode == "") {pcode = this_pcode} else {pcode += ";" + this_pcode}
		}

		var tPrices = new NumberFormat(parseInt(oPreAmount, 10));
		tPrices.setCurrency(false);
		tPrices.setCommas(true);
		tPrices.setPlaces(0);

		// 결제금액이 있을경우 (선택된 상품이 있다면...)
		if (oPreAmount > 0) 
		{				
			document.getElementById("chk_Cnt").innerHTML = chk_Sum;
			document.getElementById("Amount1").innerHTML = "";
			document.getElementById("Amount2").innerHTML = tPrices.toFormatted();
		}
		else //0원이라면...
		{			
			document.getElementById("chk_Cnt").innerHTML = "0";
			document.getElementById("Amount1").innerHTML = "";
			document.getElementById("Amount2").innerHTML = tPrices.toFormatted();
		}

		document.Form.pcode.value = pcode;
	}

	function tts()
	{
		var User_ID = "";
		var oPreAmount = 0;
		var bType = 1;			// 기간
		var Amount1;
		var Amount2;
		var pay_Consent = document.getElementById("pay_Consent");
		var SiteID;
			SiteID = document.Form.siteid.value;
		var addPoint = 0;
		var pcode = document.Form.pcode.value;

		if (User_ID == "") 
		{
			layerOpen('loginpopname');
			return;
		}		
		else if (document.Form.pcode.value == "") 
		{
			alert("선택하지 않은 항목이 있습니다.");
			return;
		}		
		else if(!pay_Consent.checked)
		{
			alert('구매하기 버튼 상단의 구매 동의를 체크하여 주시기 바랍니다.');
			return;
		}
 
		var tPrices = new NumberFormat(parseInt(oPreAmount, 10));
		tPrices.setCurrency(false);
		tPrices.setCommas(true);
		tPrices.setPlaces(0);

		Amount1 = ""
		Amount2 = tPrices.toFormatted();

		var chk_Num = document.getElementById("chk_Cnt").innerHTML;
		var _url = "Pay_01_Preview.asp?Sgroup=M4&addPoint="+addPoint+"&bType=" +bType+ "&Amount1=" + Amount1 + "&Amount2=" + Amount2 + "&pcode=" + pcode + "&chk_Num=" + chk_Num + "&SiteID=" + SiteID;
		var iHeight = (($j(window).height() - 430) / 2);
		var iWidth = (($j(window).width() - 450) / 2);
		var maskHeight = $j(document).height();
		var maskWidth = $j(window).width();		

		$j("#gameplayer").append("<iframe src=" + _url + "  frameBorder='0'  scrolling='no' width='450' height='430'>");
		$j('#levelTest').css({top:iHeight,left:iWidth}).show();
		$j('#mask').css({'width':maskWidth,'height':maskHeight}).fadeTo('slow', 0.2);
	}
	
	function fnCheck(value) 
	{
		$j('#fadeB, a.close').remove();
        $j('#gameplayer').empty();
		$j('#mask, .window').hide();
		
		if(value == 1)
		{
			Form_Submit();
		}

		$j('input:checkbox[name="chkGrade"]').each(function() {
			this.checked = false;
			$j(this).attr('checked', false);
		});
	}

	function goBasket()
	{
		var User_ID = "";
		var pay_Consent = document.getElementById("pay_Consent");

		if (User_ID == "") 
		{
			layerOpen('loginpopname');
			return;
		}
		else if (document.Form.pcode.value == "")
		{
			alert("선택하지 않은 항목이 있습니다.");
			return;
		}
		else if(!pay_Consent.checked)
		{
			alert('구매하기 버튼 상단의 구매 동의를 체크하여 주시기 바랍니다.');
			return;
		}
		else
		{
			var obj = document.Form;
			obj.mode.value = "B";
			Form_Submit();

			$j('input:checkbox[name="chkGrade"]').each(function() {
				this.checked = false;
				$j(this).attr('checked', false);
			});
		}
	}

	function Form_Submit()
	{
		var vVal = document.Form.pcode.value;
		document.Form.submit();
	}
</script>
	</body>
</html>