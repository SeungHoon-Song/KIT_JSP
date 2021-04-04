<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
이벤트 등록 페이지
-->
<html>
	<head>
		<title>이벤트 등록 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<!-- style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/board/css/editor.css"/>

	</head>
	
	<body>

		<!-- header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		<!-- Main -->
		
	<div id="main">

		<!-- 게시판 등록 -->
		<div class="container">
			<form action="${pageContext.request.contextPath}/board/BoardWriteOk.bo" method="post" name="boardform" enctype="multipart/form-data">
				<table width="900px" border="0" cellpadding="0" cellspacing="0">
					<tr align="center" valign="middle">
						<td><h2>이벤트 작성</h2></td>
					</tr>
				</table>
			
				<table  border="1" cellpadding="0" cellspacing="0" width="900px" >
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">제 목</div>
						</td>
						<td style="padding-left:10px;">
							<input name="boardTitle" type="text" size="50" maxlength="100" value=""/>
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">글쓴이</div>
						</td>
						<td style="padding-left:10px;">
							<input name="boardId" type="text" size="10" maxlength="10" value="${session_id}" readonly />
						</td>
					</tr>
					<tr height="200px">
						<td align="center" width="150px">
							<div align="center">내 용</div>
						</td>
						<td style="padding-left:10px;">
							<textarea name="boardContent" id="boardContent" style="width:700px; height:185px"></textarea>
							<script>CKEDITOR.replace('boardContent',{filebrowserUploadUrl:'/board/imageUpload.bo'});</script>
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px;">
							<input type="file" name="boardFile1">
							<input type="button" onclick="cancleFile('boardFile1')" value="첨부 삭제">
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px;">
							<input type="file" name="boardFile2">
							<input type="button" onclick="cancleFile('boardFile2')" value="첨부 삭제">
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">파일 첨부</div>
						</td>
						<td style="padding-left:10px;">
							<input type="file" name="boardFile3">
							<input type="button" onclick="cancleFile('boardFile3')" value="첨부 삭제">
						</td>
					</tr>
				</table>
				
				<table border="0" cellpadding="0" cellspacing="0" width="900px">
					<tr align="right" valign="middle">
						<td>
							<a href="javascript:addBoard()">[등록]</a>&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/board/BoardList.bo?page=${page}">[목록]</a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>
			</form>
		</div>	
		<!-- 게시판 등록 end -->
      
	</div>
		
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
	</body>
</html>