<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/board/css/writeForm.css">

		<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> -->
		<link href="${pageContext.request.contextPath}/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
		<!-- <link href="${pageContext.request.contextPath}/dist/css/datepicker.css" rel="stylesheet" type="text/css" media="all"> -->

		 <!-- script -->
		
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
						<a class="tagNav-div-a" href="${pageContext.request.contextPath}/board/eventWrite.jsp">이벤트등록</a>
					</div>
					<div class="tagNav-div2">
						<a class="tagNav-div-a" href="${pageContext.request.contextPath}/board/eventWrite.jsp">이벤트관리</a>
					</div>
				</nav>
			</div>
			
			<div class="mainManager">
				<main class="mainClass">
					<section class="mainSection">
						<form name="writeEventForm" action="${pageContext.request.contextPath}/board/eventWrite.bo" method="post" >
						<h2>기본정보<span>*필수항목</span></h2>
						<ul class="ulSection">
							<li class="liSection"> 
								<div class="imgDiv">
										 이미지
										<span>*</span>
										<small>({i}/10)</small>
								</div>
								 <div class="sc-div">
									<ul class="imgDiv2-ul">
										<li class="imgDiv2-li">
												<input type="file" class="image_inputType_file" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
												<button class="browse-btn">이미지 등록</botton>

										</li>
										<li class="imgDiv2-li">
												이미지 대표
										</li>
									</ul>
										<div id="image_container">
											<div class="leaderImg">대표이미지</div>
											<button type="button" class="deleteImg"></button>
										</div>
										<div class="imgDiv2 guideText">
											<b>* 게시글에 올릴 사진을 올려주세요.</b>
											<br>큰 이미지일 경우 업로드가 안될 수도 있습니다.
										</div>
									</div>
							</li>
							<li class="liSection">
									<div class="titleDiv">
										제목
										<span>*</span>
										<small id="leng"></small>
									</div>
									<div class="sc-div">
										<div class="titleDiv2-a">
											<div class="titleDiv2-b">
												<input type="text" name="titleName" id="titleName" class="titleName" placeholder="이벤트 제목을 입력해주세요. 최대 40자" maxlength="40" onKeyup="keyup()"/>
											</div>
												 
										</div>
									</div>
							</li>

							<li class="liSection">
								<div class="contentDiv">
									내용
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="contentDiv2">
										<textarea name="textarea" id="textarea" onkeyup="xSize(this)" rows="10"
													style="resize:inherit;width:100%;height:200px;overflow-y:hidden" ></textarea>
										<script>
										    function xSize(e){
												var t;
												e.onfocus = function()
												{
													t = setInterval(
														function()
														{
															e.style.height = '1px';
															e.style.height = (e.scrollHeight + 12) + 'px';
														}, 100);
												}
												e.onblur = function()
												{
													clearInterval(t);
												}
											}
											xSize(document.getElementById('ta'));
										</script>
									</div>
								</div>
							</li>

							<li class="liSection">
								<div class="locationDiv">
									이벤트 지역
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="locationBtn">
										<button type="button" class="button">내 위치</button>
										<button type="button" class="button">최근 지역</button>
										<button type="button" class="button">주소 검색</button>
									</div>
									<br>
								</div>
							</li>
							<li class="liSection">
								<div class="locationDiv">
									기간 설정
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="dayDiv">
										시작 날짜
										<input type='text' id="datepicker1" class="datepicker-here" data-position="right top" /> 
										<div class="datepicker-here" data-timepicker="true" data-language='en'></div>
										<!-- <input type="text" name="datepicker" id="datepicker1"> -->
										<br>
										종료 날짜 
										<input type="text" name="datepicker2" id="datepicker2">
									</div>
									<br>
								</div>
							</li>
									
								<div class="col-12">
									<br>
									<ul class="actions">
										<li style="margin: 0 auto;">
										<a href="javascript:formSubmit()" class="button primary" type="submit">등록하기</a>
										</li>
										
									</ul>
								</div> 
								
						 
						</ul>
						</form>
					</section>
				</main>
			</div>


		</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

	<!-- script -->
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
	<!-- <sciprt src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></sciprt>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->
	<!-- <script src="${pageContext.request.contextPath}/dist/js/datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/dist/js/datepicker.ko.js"></script> -->

	<script src="{pageContext.request.contextPath}/dist/js/datepicker.js"></script>
	<script src="{pageContext.request.contextPath}/dist/js/datepicker.min.js"></script>
	<script src="{pageContext.request.contextPath}/dist/js/datepicker.ko.js"></script>
<script>
	
	const browseBtn = document.querySelector('.browse-btn');
	
	const fileInput = document.querySelector('.image_inputType_file');
	fileInput.style.display = "none";

	$('.browse-btn').click(function (e) {
		e.preventDefault();
		$('#image').click();
	});

function setThumbnail(event) {
    var reader = new FileReader();
    reader.onload = function(event) {
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#image_container").appendChild(img);
    };
    reader.readAsDataURL(event.target.files[0]);
}


// $(function(){
//     $('.datepicker').datepicker({
//         format: 'mm-dd-yyyy',
//         autoclose: true
//         }).on('changeDate', function (selected) {
//             var startDate = new Date(selected.date.valueOf());
//             $('.datepicker2').datepicker('setStartDate', startDate);
//             $('.datepicker2').datepicker('endDate', '+5d')
//         });
// });
// $(function(){
//     $('.datepicker2').datepicker({
//         format: 'mm-dd-yyyy',
//         autoclose: true,
//         //endDate: '+5d'
//     });
// });

// $("#datepicker").datepicker({
//     language: 'ko',
//     timepicker: true,
//     timeFormat: "hh:ii AA"
// });


$("#datepicker1").datepicker({
    language: 'ko',
    timepicker: true,
    timeFormat: "hh:ii AA"
});
$("#datepicker2").datepicker({
    language: 'ko',
    timepicker: true,
    timeFormat: "hh:ii AA"
});

</script>
 
 
	</body>
</html>