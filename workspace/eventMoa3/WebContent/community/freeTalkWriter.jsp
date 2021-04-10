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

		<style>
			.showstep1{
				max-height: 300px;
				overflow: hidden;
			}
			.showstep2{
				max-height: 600px;
				overflow: hidden;
			}
			.content{
				height: 1000px;
			}
			.hide{
				display: none;
			}
		</style>
	</head>
	
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		<p></p>

		
		
		<!-- Main -->
		<div id="main">
			<br>
			<div class="mainManager">
				<main class="mainClass">
					<section class="mainSection">
						<form name="writeEventForm" action="${pageContext.request.contextPath}/board/eventWrite.bo" method="post" >
						<h2>기본정보<span>*필수항목</span></h2>
						<ul class="ulSection">
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
			
<!-- 			
				<div class="detailinfo showstep1">
					<div class="content">
						<!-- "실제 컨텐츠 표시 영역" -->
<!--
					</div>
				</div>
				<a href="#" class="btn_open"><i class="fas fa-arrow-down"></i></a>
				<a href="#" class="btn_close hide"><i class="fas fa-arrow-up"></i></a> -->


		</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

	<!-- script -->
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
	<script>
		function addBoard(){
			boardform.submit();
		}
		
		function cancleFile(fileTagName){
			if($.browser.msie){//ie일 때
				$("input[name='" + fileTagName + "']").replaceWith($("input[name='" + fileTagName + "']").clone(true));
			}else{//그 외 브라우저
				$("input[name='" + fileTagName + "']").val("");
			}
		}
	</script>			
<script>
document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_open').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfo').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfo > .content').offsetHeight; //컨텐츠 높이 얻기

        // // 2단계이면 전체보기로
        // if(classList.contains('showstep2')){
        //     classList.remove('showstep2');
        // }
        // 1단계이면 2단계로
        if(classList.contains('showstep1')){
            classList.remove('showstep1');
            if(contentHeight > 600){
                classList.add('showstep2');
            }else{
                document.querySelector('.btn_open').classList.add('hide');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1') && !classList.contains('showstep2')){
            e.target.classList.add('hide');
            document.querySelector('.btn_close').classList.remove('hide');
            
        }
        
    });
});
	// 감추기 버튼 이벤트 리스너
	document.querySelector('.btn_close').addEventListener('click', function(e){
		e.target.classList.add('hide');
		document.querySelector('.btn_open').classList.remove('hide'); // 더보기 버튼 감춤
		document.querySelector('.detailinfo').classList.add('showstep1'); // 초기 감춤 상태로 복귀
	});

	//컨텐츠 로딩 완료 후 높이 기준으로 클래스 재처리
	window.addEventListener('load', function(){
		let contentHeight = document.querySelector('.detailinfo > .content').offsetHeight; //컨텐츠 높이 얻기
		if(contentHeight <= 300){
			document.querySelector('.detailinfo').classList.remove('showstep1'); // 초기값보다 작으면 전체 컨텐츠 표시
			document.querySelector('.btn_open').classList.add('hide'); // 버튼 감춤
		}
	});
</script>
 
 
	</body>
</html>