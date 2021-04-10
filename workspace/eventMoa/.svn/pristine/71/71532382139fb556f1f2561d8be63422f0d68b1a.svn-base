<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>이벤트 등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/writeForm.css">

		<!-- 썸네일 이미지 -->
		<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

		<!-- timePicker -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/datepicker.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/jquery-ui-timepicker-addon.css">
		<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" /> -->
		
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
												<input type="file" class="image_inputType_file" name="image_inputType_file" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
												<button class="browse-btn">이미지 등록</button>
												<input type="button" onclick="cancleFile('boardFile1')" value="첨부 삭제">

										</li>
										<div id="image_container">
											<ul id="sortable">
												<!--  대표 이미지 , 삭제 버튼은 이미지 추가될 떄마다 들어갈 코드 -->
											 
											</ul>
										</div>
									</ul>
										<div class="imgDiv2 guideText">
											<b>* 게시글에 올릴 사진을 올려주세요.</b>
											<br>큰 이미지일 경우 업로드가 안될 수도 있습니다.
											<br>같은 이미지를 여러번 올릴 수 없습니다.
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
										<!-- <textarea name="textarea" id="textarea" onkeyup="xSize(this)" rows="10" -->
										<textarea name="textarea" id="textarea" onkeyup="xSize(this)" rows="10"
													style="resize:inherit;width:100%;height:200px;overflow-y:hidden" ></textarea>
									</div>
								</div>
							</li>

							<li class="liSection">
								<div class="locationDiv">
									이벤트 <br> 지역
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="locationBtn">
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
									<br>
								</div>
							</li>
							<li class="liSection">
								<div class="locationDiv">
									기간 <br> 설정
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="dayDiv">
										<span> 시작과 종료 날짜를 지정하세요.</span>
										<br>
										<div class="double">
											<input id="datepicker1" type="text" placeholder="시작날짜"> -
											<input id="datepicker2" type="text" placeholder="종료날짜">
										</div>
									</div>
									<br>
								</div>
							</li>
									
								<div class="col-12">
									<br>
									<ul class="actions">
										<li style="margin: 0 auto;">
										<a href="javascript:addBoard()" class="button primary" type="submit">등록하기</a>
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

	<!-- 썸네일 + Calander  UI  -->
	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
	<!--  -->

	<!-- 우편번호 -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script>

//--------------------------------------------------------------------------
	function addBoard(){
		writeEventForm.submit();
	}
		
	function cancleFile(fileTagName){
		if($.browser.msie){//ie일 때
			$("input[name='" + fileTagName + "']").replaceWith($("input[name='" + fileTagName + "']").clone(true));
		}else{//그 외 브라우저
			$("input[name='" + fileTagName + "']").val("");
		}
	}
	
// ----------------------------------썸네일----------------------------------
	const browseBtn = document.querySelector('.browse-btn');
	
	const fileInput = document.querySelector('.image_inputType_file');
	fileInput.style.display = "none";

	$('.browse-btn').click(function (e) {
		e.preventDefault();
		$('#image').click();
	});


	
	function clickLeaderImg() {
		document.getElementById("leaderImg1").style.display = "block";
		document.getElementById("leaderImg1").innerHTML = "대표 이미지";
	}


	var imgListCnt = 0;
	function setThumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
		
			const li = document.createElement("li");
			imgListCnt++;
			const div = document.createElement("div");
			const button = document.createElement("button");
			var img = document.createElement("img");


			li.setAttribute('id', ("imageList"+imgListCnt+""));
			li.setAttribute('class', "imgDiv2-li");
			div.setAttribute('class', "leaderImg");
			div.setAttribute('id', ("leaderImg"+imgListCnt+""));
			
			button.setAttribute('class', "deleteImg");
			button.setAttribute('type', "button");
			
			img.setAttribute("src", event.target.result); //
			// document.querySelector("div#image_container").appendChild(img);
			document.querySelector("ul#sortable").appendChild(li);
			document.querySelector("li#imageList"+imgListCnt+"").appendChild(div);
			document.querySelector("li#imageList"+imgListCnt+"").appendChild(button);
			document.querySelector("li#imageList"+imgListCnt+"").appendChild(img);
			
			clickLeaderImg();
		};
		reader.readAsDataURL(event.target.files[0]);
	}
//--------------------------------------------------------------------------
//-------------------------------이미지 드래그------------------------------------
$(function() {
	$("#sortable").sortable();
	$("#sortable").disableSelection();
});
// ----------------------------------------------------------------------------
</script>
 
<!-- 날짜 넣기 -->
<script src="${pageContext.request.contextPath}/dist/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/dist/js/i18n/datepicker.ko.js"></script>
<!-- timePicker -->
<!-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
<script src="${pageContext.request.contextPath}/dist/jquery-ui-timepicker-addon.js"></script>
 <script>
  
 

        //두개짜리 제어 연결된거 만들어주는 함수
        datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

        /*
            * 달력 생성
            * @param sDate 파라미터만 넣으면 1개짜리 달력 생성
            * @example   datePickerSet($("#datepicker"));
            * 
            * 
            * @param sDate, 
            * @param eDate 2개 넣으면 연결달력 생성되어 서로의 날짜를 넘어가지 않음
            * @example   datePickerSet($("#datepicker1"), $("#datepicker2"));
            */
        function datePickerSet(sDate, eDate, flag) {
			
            //시작 ~ 종료 2개 짜리 달력 datepicker	
            if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0 && eDate.length > 0) {
                var sDay = sDate.val();
                var eDay = eDate.val();

                if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...			
                    var sdp = sDate.datepicker().data("datepicker");
                    sdp.selectDate(new Date(sDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

                    var edp = eDate.datepicker().data("datepicker");
                    edp.selectDate(new Date(eDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
                }

                //시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
                if (!isValidStr(eDay)) {
                    sDate.datepicker({
 
                        maxDate: new Date(eDay.replace(/-/g, "/"))
                    });
                }
                sDate.datepicker({
                    language: 'ko',
					timepicker: true,
					timeFormat: "hh:ii AA",
					controlType:'select',
					oneLine:true,
                    autoClose: true,
                    onSelect: function () {
                        datePickerSet(sDate, eDate);
                    }
                });

                //종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
                if (!isValidStr(sDay)) {
                    eDate.datepicker({
                        minDate: new Date(sDay.replace(/-/g, "/"))
                    });
                }
                eDate.datepicker({
                    language: 'ko',
                    autoClose: true,
					timepicker: true,
					timeFormat: "hh:ii AA",
					controlType:'select',
					oneLine:true,
                    onSelect: function () {
                        datePickerSet(sDate, eDate);
                    }
                });
            }


            function isValidStr(str) {
                if (str == null || str == undefined || str == "")
                    return true;
                else
                    return false;
            }
        }
 </script>
	</body>
</html>