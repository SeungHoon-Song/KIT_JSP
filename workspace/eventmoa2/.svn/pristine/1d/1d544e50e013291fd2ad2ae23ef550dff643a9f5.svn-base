<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
 사이드바 
-->
<html>
	<head>
		<title></title>
		<meta charset="utf-8" />
		
	<script type="text/javascript">
	 var stmnLEFT = 0; // 오른쪽 여백  
	 var stmnGAP1 = 0; // 위쪽 여백 
	 var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
	 var stmnBASE = 150; // 스크롤 시작위치 
	 var stmnActivateSpeed = 14; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
	 var stmnScrollSpeed = 15; //스크롤 속도 (클수록 느림)
	 var stmnTimer; 
	 
	 function RefreshStaticMenu() { 
	  var stmnStartPoint, stmnEndPoint; 
	  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
	  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
	  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
	  if (stmnStartPoint != stmnEndPoint) { 
	   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
	   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
	   stmnRefreshTimer = stmnScrollSpeed; 
	   }
	  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
	  } 
	 function InitializeStaticMenu() {
	  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
	  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
	  RefreshStaticMenu();
	  }
	</script>
	<style type="text/css">
	#STATICMENU { 
	
	margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;
	z-index: 10001;
	
	}
	
		@media screen and (max-width: 1240px) {
			#STATICMENU {
			display:none;
			}
		}
	
	.container{
	   max-width:200px;
	   background:white;
	   margin:40px auto;
	   padding:10px 0px 20px 0px;
	   border:1px solid #111;
	   border-radius:4px;
	   box-shadow:0px 4px 5px rgba(0, 0, 0, 0.75);
	}

	.container a {
		font-size: 13px;
		margin: 0 auto;
	}
	.container img {
		height: 65%;
    	float: left;
    	margin-top: 6px;
    	margin-right: -12px;
    	margin-left: 4px;
	}

	
	.link{
	   font-size:16px;
	   font-weight:300;
	   text-align:center;
	   position:relative;
	   height:40px;
	   line-height:40px;
	   overflow:hidden;
	   width:90%;
	   margin-left:5%;
	   cursor:pointer;
	   font-family: 'Jua';
	}
	
	.link:after{
	   content: '';
	   position:absolute;
	   width:80%;
	   border-bottom:1px solid rgba(255, 255, 255, 0.5);
	   bottom:50%;
	   left:-100%;
	   transition-delay: all 0.5s;
	   transition: all 0.5s;
	}
	
	.link:hover:after,
	.link.hover:after{
	   left:100%;
	}
	
	.link .text{
	   text-shadow:0px -40px 0px rgba(255, 255, 255, 1);
	   transition:all 0.75s;
	   transform:translateY(100%) translateZ(0);
	   transition-delay:all 0.25s;
	}
	
	.link:hover .text,
	.link.hover .text{
	   text-shadow:0px -40px 0px rgba(255, 255, 255, 0);
	   transform:translateY(0%) translateZ(0) scale(1.1);
	   font-weight:600;
	}
	.button.small.alpha { 
		float: left;
		text-align: left;
		width: 49% !important;
		padding: 0%;
	}
	.button.small.bravo { 
		text-align: left;
		width: 49% !important;
		padding: 0%;
	}
	.user {
		text-align: center;
	}
	
	</style>


	</head>
	
	<body onload="InitializeStaticMenu();">

	</body>
		<c:set var="login" value="${login}"/>
		<c:set var="session_id" value="${session_id}"/>
		      
		<c:set var = 'userStatus' value = "false"></c:set>
		<c:if test="${session_id ne null }">
			<c:set var = 'userStatus' value = 'true'/>
		</c:if>
	
	<div id="STATICMENU" >
<div class="container">
	<div class="link text user">
		<span style="text-align: center;">
		 <c:if test="${userStatus eq true}">
			 ${session_id}님 로그인
			</c:if>
		<c:if test="${userStatus eq false}">
			어서오세요!
		</c:if>
		</span>
	 </div>
	<div class="button small main" style="display: flex; margin: 0 auto; width: 95%; box-shadow: none;">
		<img src="${pageContext.request.contextPath}/images/sidebar/main.png" style="width: auto;
		display: block;"> 
		<a href="${pageContext.request.contextPath}/main.us">메인</a>
	</div>
	<hr style="margin: 1em 0;">
	<div class="button small alpha" style="display: flex; margin-left: 3px; box-shadow: none;">
		  <img src="${pageContext.request.contextPath}/images/sidebar/login.png" style="width: auto;
		    display: block;"> 
		 <c:if test="${userStatus eq false}">
		  <a href="${pageContext.request.contextPath}/user/UserLogin.us">
		    　로그인  </a>
		 </c:if>
		 <c:if test="${userStatus eq true}">
			<a href="${pageContext.request.contextPath}/user/UserLogin.us">
			 로그아웃</a>
		</c:if>
	</div>
	<div class="button small bravo" style="display: flex; margin: 0 auto; width: 95%; box-shadow: none;">
		<img src="${pageContext.request.contextPath}/images/sidebar/add-user.png" style="width: auto;
		display: block;"> 
		<c:if test="${userStatus eq false}">
		<a href="${pageContext.request.contextPath}/user/UserJoin.us">
		　회원가입 </a>
		</c:if>
		<c:if test="${userStatus eq true}">
		<a href="${pageContext.request.contextPath}/mypage/myPage.us">
		　마이페이지 </a>
		</c:if>
	</div>
    <hr style="margin: 1em 0;">
	<div class="button small charlie" style="display: flex; margin: 0 auto; width: 95%; box-shadow: none;">
		<img src="${pageContext.request.contextPath}/images/sidebar/event.png" style="width: auto;
		display: block;"> 
		<a href="${pageContext.request.contextPath}/Event/nowEvent.jsp">
		　진행 이벤트
		</a>
	</div>
    <hr style="margin: 1em 0;">
	<div class="button small delta" style="display: flex; margin: 0 auto; width: 95%; box-shadow: none;">
		<img src="${pageContext.request.contextPath}/images/sidebar/board.png" style="width: auto;
		display: block;"> 
		<a href="${pageContext.request.contextPath}/community/freeTalk.jsp">
		　자유게시판
		</a>
	</div>
</div>
<br>
<a href="#">
  <img src="${pageContext.request.contextPath}/images/sidebar/scroll-up.gif" style="width: 35%;
  margin:0 auto;
    display: block;"> 
</a>
</div>
	
</html>
