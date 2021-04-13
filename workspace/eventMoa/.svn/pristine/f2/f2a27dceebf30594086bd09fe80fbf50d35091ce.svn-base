<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--

-->
<html>
	<head>
		<title>자유게시판 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
 		.column{
 			padding: 45px !important;
 		}
 		
 		@media screen and (max-width: 980px){
 		#td1 {
 			width: 30% !important;
 			}
 		}
		</style>
	</head>
	
	<body class="is-preload">
	 	<c:set var="f_vo" value="${f_vo}"/>
		<c:set var="replies" value="${replies}"/>
		<c:set var="files" value="${files}"/>

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageCofntext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		
		
		<!-- FreeTalk -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: left; color: black; margin: auto;">${f_vo.getBoard_Title()}</h2>
				<p class="col_desc"> </p>
				
			<table width="900px" border="1" cellpadding="0" cellspacing="0">
				<tr height="30px">
					<td align="center" width="150px" id="td1">제 목</td>
					<td style="padding-left:10px;">${f_vo.getBoard_Title()}</td>
				</tr>
				
				<tr height="30px">
					<td  align="center" width="150px" id="td1">아이디</td>
					<td style="padding-left:10px;">${f_vo.getBoard_Id()}</td>
				</tr>
				
				<tr height="200px">
					<td align="center" width="150px" id="td1">내 용</td>
					<td valign="top" style="padding-top:10px; padding-left:10px;">${f_vo.getBoard_Content()}</td>
				</tr>
				
				<c:if test="${files != null}">
					<tr height="30px">
						<td align="center" id="td1">첨부파일</td>
						<td>
							<c:forEach var="file" items="${files}">
								<a href="${pageContext.request.contextPath}/freeboard/FileDownload.bo?fileName=${file.getFile_Name()}">${file.getFile_Name()}</a>
							</c:forEach>
						</td>
					</tr>
				</c:if>
			</table>
			<table width="900px" border="0" cellpadding="0" cellspacing="0">
				<tr align="right" valign="middle">
					<td>
						<c:if test="${f_vo.getBoard_Id() eq session_id}">
							<a href="${pageContext.request.contextPath}/freeboard/FreeBoardModify.bo?board_Num=${f_vo.getBoard_Num()}&page=${page}">[수정]</a>
							<a href="javascript:deleteBoard()">[삭제]</a>
						</c:if>
						<a href="${pageContext.request.contextPath}/freeboard/FreeBoardList.bo?page=${page}">[목록]</a>
					</td>
				</tr>
			</table>
			<form name="boardForm" method="post" style="margin-bottom: -35px;" action="${pageContext.request.contextPath}/freeboard/FreeBoardDeleteOk.bo">
				<input type="hidden" name="board_Num" value="${f_vo.getBoard_Num()}">
				<input type="hidden" name="page" value="${page}">
			</form>
			<!-- 댓글 -->
			<table id="replyTable"></table>
</article>
</section>
</div>
		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
	<script>
	function deleteBoard(){
		boardForm.submit();
	}
	</script>
	<script>
		$(document).ready(function(){getList();});
	
		var check = false;
		var pageContext = "${pageContext.request.contextPath}";
		var board_Num = "${f_vo.getBoard_Num()}";
		
		//댓글 추가
		function insertReply(){
			var reply_Content = $("textarea[name='reply_Content']").val();
			$.ajax({
				url : pageContext + "/freeboard/FreeBoardReplyOk.bo",
				type : "post",
				data : {"reply_Content" : reply_Content, "board_Num" : board_Num},
				dataType : "text",
				success : function(result){
					alert(result);
					getList();
				}
			});
		}
		
		//댓글 목록
		function getList(){
			$.ajax({
				url : pageContext + "/freeboard/FreeBoardReplyList.bo?board_Num=" + board_Num,
				type : "get",
				dataType : "json",
				success : showList
			});
		}
		
		function showList(replys){		
			
			 var text = "";
			
		    if(replys != null && replys.length != 0){
		    	$.each(replys, function(index, reply){
		    		text += "<tr style='border-top: solid 1px; border-color: #e3e3e3;'><td align='center' width='150px'>" + reply.user_Id + "</td>";
		    		text += "<td valign='top' style='padding-left:10px;'>";
		    		text += "<textarea name='content" + (index + 1) + "' id='"+ (index + 1) +"' class='re' style='height:85px; resize:none; border: none; background-color: white;' readonly>"+ reply.reply_Content +"</textarea>";

		    		if("${session_id}" == reply.user_Id){
		    			text +="<a id='ready"+ (index + 1) + "' href='javascript:updateReply(" + (index + 1) + ")'>[수정]</a>";
		    			text +="<a id='ok" + (index + 1) + "' href='javascript:updateOkReply(" + reply.reply_Num + ", " + (index+1)+ ")' style='display:none;'>[수정 완료]</a>";
		    			text += "<a href='javascript:deleteReply(" + reply.reply_Num + ")'>[삭제]</a>";
		    		}
		    		text +="</td><tr>";
		    	});
		    }else{
		    	text += "<tr align='center'><td align='center' width='150px' colspan='2'>댓글이 없습니다.</td></tr>"
		    }
		    
		    //로그인일 경우에만 댓글 작성 테이블
		    if("${session_id}" != null && "${session_id}" != ""){
				text += "<tr height='200px'>   <td align='center' width='18%;'><div align='center'>댓 글</div></td>"
		    	+ "<td style='padding-left:10px'><textarea name='reply_Content' style='height:185px; resize:none;''></textarea>"
		    	+ "<a href='javascript:insertReply()''>[등록]</a></td></tr>";
		    }
		    
		    $("#replyTable").html(text);
		    autosize($("textarea.re"));
		}
		
		//댓글 삭제
		function deleteReply(reply_Num){
			$.ajax({
				url : pageContext + "/freeboard/FreeBoardReplyDeleteOk.bo",
				type : "post",
				data : {"reply_Num" : reply_Num},
				dataType : "text",
				success : function(result){
					alert(result);
					getList();
				}
			});
		}
		
		//댓글 수정
		function updateReply(num){
			if(!check){
				var textarea = $("textarea#" + num);
				var a_ready = $("a#ready" + num);
				var a_ok = $("a#ok" + num);
				
				textarea.removeAttr("readonly");
				textarea.css("background-color", "rgba(144, 144, 144, 0.075)");
				textarea.css("border", "solid 1px");
				textarea.css("border-color", "#9DC2E5");
				a_ready.hide();
				a_ok.show();
				check = true;
			}else{
				alert("수정 중인 댓글이 있습니다.");
			}
		}
		
		//댓글 수정 완료
		function updateOkReply(reply_Num, seq){
			var content = $("textarea#" + seq).val();
			$.ajax({
				url : pageContext + "/freeboard/FreeBoardReplyModifyOk.bo",
				type : "post",
				data : {"reply_Num" : reply_Num, "content" : content},
				dataType : "text",
				success : function(result){
					alert(result);
					check = false;
					getList();
				}
			});
		}
		
		</script>
</html>