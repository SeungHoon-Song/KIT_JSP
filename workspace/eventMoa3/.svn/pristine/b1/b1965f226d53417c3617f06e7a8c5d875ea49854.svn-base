<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--

-->
<html>
	<head>
		<title>인증후기 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
 		.column{
 			padding: 45px !important;
 		}
 		
 				@media screen and (max-width: 1680px) {
			body, input, select, textarea {
				font-size: 12pt;
			}

		}

		input[type=file] {
			display: none;
		}
		
		.leaderImg, #leaderImg_0 {
		    position: absolute;
		    height: 1.5rem;
		    padding: 0px 0.5rem;
		    display: flex;
		    -webkit-box-align: center;
		    align-items: center;
		    top: 0.5rem;
		    left: 0.5rem;
		    background-color: rgba(30, 29, 41, 0.32);
		    color: rgb(255, 255, 255);
		    border-radius: 12px;
		    font-size: 12px;
		    display: none;
		}
		
		.deleteImg {
		    width: 1.5rem;
		    height: 1.5rem;
		    background-position: center center;
		    background-repeat: no-repeat;
		    background-size: 12px 12px;
		    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTYuODQ4IDZsMy43NzYtMy43NzZhLjYuNiAwIDEgMC0uODQ4LS44NDhMNiA1LjE1IDIuMjI0IDEuMzc2YS42LjYgMCAwIDAtLjg0OC44NDhMNS4xNTIgNiAxLjM3NiA5Ljc3NWEuNi42IDAgMSAwIC44NDguODQ5TDYgNi44NDhsMy43NzYgMy43NzZhLjU5OC41OTggMCAwIDAgMS4wMjQtLjQyNS42LjYgMCAwIDAtLjE3Ni0uNDI0TDYuODQ4IDZ6IiBvcGFjaXR5PSIuNjQiLz4KPC9zdmc+Cg==);
		    background-color: rgba(30, 29, 41, 0.32);
		    border-radius: 50%;
		    position: absolute;
		    top: 0.5rem;
		    right: 0.5rem;
		    float: right;
		    cursor: pointer;
		}
		@media screen and (max-width: 736px) {
			textarea, input{
				    width: 100% !important;
			}

		}

		@media screen and (max-width: 360px) {
			textarea, input{
				    width: 100% !important;
			}

		}
		.imgDiv2-li {
		    width: 202px;
		    height: 202px;
		    position: relative;
		    border: 1px solid rgb(230, 229, 239);
		    background: rgb(250, 250, 253);
		    display: flex;
		    -webkit-box-align: center;
		    align-items: center;
		    -webkit-box-pack: center;
		    justify-content: center;
		    flex-direction: column;
		    color: rgb(155, 153, 169);
		    font-size: 1rem;
		    margin-right: 1rem;
		    margin-bottom: 1rem;
		    /* cursor: pointer; */
		}
		.sc-div img {
		    height: 200px;
		    width: 200px;
		    margin-right: 5px;
		}
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
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		
		
		<!-- FreeTalk -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: left; color: black;">인증후기 글쓰기</h2>
				<p class="col_desc"> </p>
		
						<form method="post" action="${pageContext.request.contextPath}/reviewboard/ReviewBoardModifyOk.rb" class="combined" name="modifyForm" enctype="multipart/form-data" style="margin-bottom: 0;">
	         			<input type="hidden" name="board_Num" value="${r_vo.getBoard_Num()}">
						<input type="hidden" name="page" value="${page}">
					<table  border="1" cellpadding="0" cellspacing="0" width="900px" >
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">제 목</div>
						</td>
						<td style="padding-left:10px;">
							<input name="board_Title" type="text" size="50" maxlength="100" value="${r_vo.getBoard_Title()}"/>
						</td>
					</tr>
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">글쓴이</div>
						</td>
						<td style="padding-left:10px;">
							<input name="board_Id" type="text" size="10" maxlength="10" style="border: none; background: none;" value="${session_id}" readonly />
						</td>
					</tr>
					<tr height="200px">
						<td align="center" style="width: 11%;">
							<div align="center">내 용</div>
						</td>
						<td style="padding-left:10px;">
							<textarea name="board_Content" style="height:185px; resize: none;">${r_vo.getBoard_Content()}</textarea>
						</td>
					</tr>
				</table>
				<ul class="ulSection">
				<li class="liSection"> 
								<div class="imgDiv">
										 이미지
								</div>
								<div class="sc-div">
									<ul class="imgDiv2-ul" id="imgDiv2-ul">
											<a href="javascript:" onclick="fileUploadAction();" id="fileText" style="cursor: pointer;">
										<li class="imgDiv2-li asd" id="addImg-li" style="float: left;">
												<i class="fas fa-camera"></i><br />이미지 등록</li></a>
          									<input type="file" name="input_imgs_0" id="input_imgs_0"/>
										<ul class="imgs_wrap">

										</ul>

									</ul>
									<div class="imgDiv2-Btn">
										<!-- <a href="javascript:" class="button" onclick="submitAction();">사진 등록</a> -->
									</div>
									<div class="imgDiv2 guideText" style="display: inline-block;">
										<br>
										<b> * 게시글에 올릴 사진을 올려주세요.</b>
										<br>❗️ 용량이 큰 이미지를 올리실 경우 업로드가 안될 수도 있습니다. (용량 제한: 50M)
										<br>❗️ 이미지는 1개만 등록할 수 있습니다.
									</div>
									</div>
							</li>
				</ul>
				
				<div class="col-12">
									<br>
									<ul class="actions" style="margin-top: 13%;">
										<li style="margin: 0 auto;">
										<a href="javascript:modifyBoard()" class="button primary" type="submit">수정하기</a>
										<a href="${pageContext.request.contextPath}/reviewboard/ReviewBoardList.rb?page=${page}" class="button" type="submit">목록</a>
										</li>
										
									</ul>
				</div> 
				</form>
							
							</article>
						</section>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
	<script>
	$(document).ready(function(){
		$("#input_imgs_0").on("change", handleImgFileSelect);
		
	});	
	function fileUploadAction() {
		$("#input_imgs_0").trigger('click');
	}
	 
	function handleImgFileSelect(e){ 
		// 이미지 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		var index = 0;
		var fileCnt = 1;

		filesArr.forEach(function(f){
			if(!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			} else if (sel_files.length > 10 || index > 10) {
				alert("이미지는 10개 이하로만 업로드가 가능합니다.");
				return;
			}
			sel_files.push(f);

			var reader = new FileReader();
			reader.onload = function(e) {
				var html = "<a href=\"javascript:void(0);\" id=\"img_id_"+index+"\">"
					+" <li id='imageList_"+index+"' class='imgDiv2-li'><div id='leaderImg_"+index+"' class='leaderImg'></div>"
					// +" <input type=\"file\" name='input_imgs_"+fileCnt+"'>"
					+" <button type='button' class=\"deleteImg\" onclick=\"deleteImageAction("+index+")\"></button>"
					+" <img src=\"" + e.target.result +"\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'>"
					+" </li></a>";
				$(".imgs_wrap").append(html);
				index++;
				fileCnt++;
			document.getElementById("leaderImg_0").style.display = "block";
			document.getElementById("leaderImg_0").innerHTML = "대표 이미지";
			document.getElementById("imgCount").innerHTML = sel_files.length+"";
			}
			reader.readAsDataURL(f);
		});

		

	}

	function deleteImageAction(index) {
		console.log("index : "+index);
		console.log("sel length : "+sel_files.length);

		sel_files.splice(index, 1);

		var img_id = "#img_id_"+index;
		$(img_id).remove();
		document.getElementById("imgCount").innerHTML = ""+sel_files.length+"";
	}

	//-------------------------------이미지 드래그------------------------------------
	$(function() {
		$(".imgs_wrap").sortable();
		$(".imgs_wrap").disableSelection();
	});
	//--------------------------------------------------------------------------
	</script>
	<script>
		function modifyBoard(){
			modifyForm.submit();
		}
		/* function cancleFile(fileTagName){
			if($.browser.msie){//ie일 때
				//첨부파일 업로드 전의 태그를 복사해 놓고, 초기화 시 복사된 태그를 덮어 씌워준다.
				$("input[name='" + fileTagName + "']").replaceWith($("input[name='" + fileTagName + "']").clone(true));
			}else{//그 외 브라우저
				$("input[name='" + fileTagName + "']").val("");
			}
		} */
	</script>
</html>