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
		</style>
	</head>
	
	<body class="is-preload">
	<c:if test="${session_id eq null}">
			<script>
			   alert("로그인 후 이용해주세요");
			   location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
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
		
						<form method="post" action="${pageContext.request.contextPath}/reviewboard/ReviewBoardWriteOk.rb" class="combined" name="freeBoardform" enctype="multipart/form-data" style="margin-bottom: 0;">
	         			
					<table  border="1" cellpadding="0" cellspacing="0" width="900px" >
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">제 목</div>
						</td>
						<td style="padding-left:10px;">
							<input name="board_Title" id="board_Title" type="text" size="50" maxlength="100" value="" minlength = "1"/>
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
							<textarea name="board_Content" id="board_Content" style="height:185px; resize: none;" minlength = "1"></textarea>
						</td>
					</tr>
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px;">
							<input type="file" name="board_File1">
							<input type="button" onclick="cancleFile('board_File1')" value="삭제">
						</td>
					</tr>
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px;">
							<input type="file" name="board_File2">
							<input type="button" onclick="cancleFile('board_File2')" value="삭제">
						</td>
					</tr>
					<tr height="30px">
						<td align="center" style="width: 11%;">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px; width: 28%;">
							<input type="file" name="board_File3">
							<input type="button" onclick="cancleFile('board_File3')" value="삭제">
						</td>
					</tr>
				</table>
				
				<div class="col-12">
									<br>
									<ul class="actions">
										<li style="margin: 0 auto;">
										<a href="javascript:addBoard();" class="button primary" type="submit">등록하기</a>
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
		var form = document.freeBoardform;
		
		function addBoard(){
			if(!form.board_Title.value){
				alert("제목을 입력해주세요.");
				form.board_Title.focus();
				return;
			}
			else if(!form.board_Content.value){
				alert("내용을 입력해주세요.");
				form.board_Content.focus();
				return;
			}
				freeBoardform.submit();
		}
		
		function cancleFile(fileTagName){
			if($.browser.msie){//ie일 때
				//첨부파일 업로드 전의 태그를 복사해 놓고, 초기화 시 복사된 태그를 덮어 씌워준다.
				$("input[name='" + fileTagName + "']").replaceWith($("input[name='" + fileTagName + "']").clone(true));
			}else{//그 외 브라우저
				$("input[name='" + fileTagName + "']").val("");
			}
		}
	</script>
</html>