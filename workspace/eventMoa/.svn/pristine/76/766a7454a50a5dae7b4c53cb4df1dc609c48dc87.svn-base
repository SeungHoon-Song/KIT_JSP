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
       
       @media screen and (max-width: 980px){
       #td1 #replyTd {
          width: 30% !important;
          }
       }
      @media screen and (max-width: 480px){
       .button {
          width: 20% !important;
          }
       }
       #small {
              margin-top: 2%;
             margin-right: 3%;
       }
      </style>
   </head>
   
   <body class="is-preload">
       <c:set var="r_vo" value="${r_vo}"/>
      <c:set var="replies" value="${replies}"/>
      <c:set var="files" value="${files}"/>
      <c:set var="rr_vo" value="${rr_vo}"/>
      <c:set var="rf_vo" value="${rf_vo}"/>

      <!-- Header -->
      <jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
   <p></p>
      <!-- Main -->
         <div id="main" style="padding-bottom: 6%;">
         
      <!-- Logo -->
      <jsp:include page="${pageCofntext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
      
      
      <!-- Review -->
      <section id="banner">
         <article class="column col4" style="border: 1px solid #e3e3e3; border-radius: 6px; width: 95%; margin: 0 auto;">
            <h2 class="col_tit" style="text-align: left; color: black; margin: auto;">${r_vo.getBoard_Title()}</h2>
            <p class="col_desc"> </p>
            
         <table width="900px" border="1" cellpadding="0" cellspacing="0">      
            <tr>
				<td align="center" style="width: 25%;">
					<div align="center">이벤트 번호</div>
				</td>
				<td style="padding-left:10px;">
					${r_vo.getE_board_Num()} 
				</td>
			</tr>
			<tr height="30px">
				<td align="center" style="width: 25%;">
					<div align="center">이벤트 제목</div>
				</td>
				<td style="padding-left:10px;">
					${r_vo.getE_board_Title()}
				</td>
			</tr>
            <tr height="30px">
               <td  align="center" width="150px" id="td1">작성자</td>
               <td style="padding-left:10px;">
				<c:set var = "user_id" value = "${r_vo.getBoard_Id()}"/>
		   <c:set var = "id_length" value = "${fn:length(user_id)}"/>
				<c:set var = "private_id" value = "${fn:substring(user_id, 0, id_length-2)}" />
				${private_id}**
               </td>
            </tr>
            <tr height="200px">
               <td align="center" width="150px" id="td1">내 용</td>
               <td valign="top" style="padding-top:10px; padding-left:10px;"> 
               		<pre style="font-family:'Nanum Gothic'; white-space: pre-line;">
		    			<c:out value="${r_vo.getBoard_Content()}" />
               		</pre>
    			</td>
            </tr>
            <div align="center" style="margin-bottom: 2%;">
         		<a href="${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num=${r_vo.getE_board_Num()}&page=${page}" class="button">본 이벤트 바로가기</a>
            </div>
         </table>
            <c:if test="${files != null}">
               <div class="slider" style="width:50%; height: 100%; margin:0 auto; margin-top: 10%;">
                  <div>
                     <figure>
                        <img src='${pageContext.request.contextPath}/uploadFolder/reviewFilesUpload/${files}'>
                     </figure>
                  </div>
               </div>
            </c:if>
            <br>
         <form name="boardForm" method="post" style="margin-bottom: 20px;" action="${pageContext.request.contextPath}/reviewboard/ReviewBoardDeleteOk.rb">
            <input type="hidden" name="board_Num" value="${r_vo.getBoard_Num()}">
            <input type="hidden" name="page" value="${page}">
         </form>
         <!-- 댓글 -->
         <table id="replyTable"></table>
</article>
</section>
                  <div style="margin-right: 3%;">
                  <c:if test="${r_vo.getBoard_Id() eq session_id}">
                     <a href="${pageContext.request.contextPath}/reviewboard/ReviewBoardModify.rb?board_Num=${r_vo.getBoard_Num()}&page=${page}"><div class="button small" style="float: right;  margin-top: 2%;">수정</div></a>
                     <a href="javascript:deleteBoard()"><div class="button small" style="float: right; margin-top: 2%;">삭제</div></a>
                  </c:if>
                  <a href="${pageContext.request.contextPath}/reviewboard/ReviewBoardList.rb?category=recent&page=${page}"><div class="button small" style="float: right; margin-top: 2%;">목록</div></a>
                  </div>
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
      var board_Num = "${r_vo.getBoard_Num()}";
      var reply_Date = "${rr_vo.getReply_Date()}";
      
      //댓글 추가
      function insertReply(){
         var reply_Content = $("textarea[name='reply_Content']").val();
         $.ajax({
            url : pageContext + "/reviewboard/ReviewBoardReplyOk.rb",
            type : "post",
            data : {"reply_Content" : reply_Content, "board_Num" : board_Num, "reply_Date" : reply_Date},
            dataType : "text",
            success : function(result){
               getList();
            }
         });
      }
      
      //댓글 목록
      function getList(){
         $.ajax({
            url : pageContext + "/reviewboard/ReviewBoardReplyList.rb?board_Num=" + board_Num,
            type : "get",
            dataType : "json",
            success : showList
         });
      }
      
      function showList(replys){      
         
          var text = "";
         
          if(replys != null && replys.length != 0){
             $.each(replys, function(index, reply){
            	 var year = reply.reply_Date.substr(0,4);
 				var months = reply.reply_Date.substr(5,2);
 				var day = reply.reply_Date.substr(8,2);
            	 var id_length = reply.user_Id.length;
             	var private_id = reply.user_Id.substr(0,id_length-2);
                text += "<tr style='border-top: solid 1px; border-color: #e3e3e3;'><td align='center' width='150px' id='replyTd'>" + private_id + "**</td>";
                text += "<td valign='top' style='padding-left:10px;'>";
                text += "<textarea name='content" + (index + 1) + "' id='"+ (index + 1) +"' class='re' style='height:85px; resize:none; border: none; background-color: white;' readonly>"+ reply.reply_Content +"</textarea>";
                text += "<p style='float: right;'>" + year+"-"+months+"-"+day+ "</p>";
                if("${session_id}" == reply.user_Id){
                   text +="<a id='ready"+ (index + 1) + "' href='javascript:updateReply(" + (index + 1) + ")'>[수정]</a>";
                   text +="<a id='ok" + (index + 1) + "' href='javascript:updateOkReply(" + reply.reply_Num + ", " + (index+1)+ ")' style='display:none;'>[수정 완료]</a>";
                   text += "<a href='javascript:deleteReply(" + reply.reply_Num + ")'>[삭제]</a>";
                }
                text +="</td></tr>";
             });
          }else{
             text += "<tr align='center' style='border-top: solid 1px; border-color: #e3e3e3;'><td align='center' width='150px' colspan='2'>등록된 댓글이 없습니다.</td></tr>"
          }
          
          //로그인일 경우에만 댓글 작성 테이블
          if("${session_id}" != null && "${session_id}" != ""){
            text += "<tr height='100px' style='border: 1px solid #e3e3e3;' 'border-radius: 6px;'><td align='center' width='20%;'><div align='center'>댓 글</div></td>"
             + "<td style='padding-left:10px'><textarea name='reply_Content' style='height:185px; resize:none;''></textarea>"
             + "<a href='javascript:insertReply()'>[등록]</a></td></tr>";
          }
          
          $("#replyTable").html(text);
          autosize($("textarea.re"));
      }
      
      //댓글 삭제
      function deleteReply(reply_Num){
         $.ajax({
            url : pageContext + "/reviewboard/ReviewBoardReplyDeleteOk.rb",
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
            url : pageContext + "/reviewboard/ReviewBoardReplyModifyOk.rb",
            type : "post",
            data : {"reply_Num" : reply_Num, "content" : content},
            dataType : "text",
            success : function(result){
               check = false;
               getList();
            }
         });
      }
      
      </script>
</html>
