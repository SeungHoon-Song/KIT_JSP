<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>이벤트모아 결제오류 FAQ</title>
<style>
table.type11 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  margin: 20px 10px;
}
table.type11 th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  background: #EDF2F4 ;
  border-bottom: 1px solid #b2bfc7;
}
table.type11 td {
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
<img style="margin-left: 45%;" src="${pageContext.request.contextPath}/images/event-logo4-1.png">
<table class="type11">
  <thead>
  <tr>
    <th scope="cols">번호</th>
    <th scope="cols" style="width: 170px;">카테고리</th>
    <th scope="cols" style="width: 568px;">제목</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td><img src="${pageContext.request.contextPath}/images/point/bu_num_1.gif"></td>
    <td>서비스 추가/변경/해지 문의</td>
    <td><a href="javascript:doDisplay();" title="Plug-In 설치가 자동으로 안되요. 어떻게 해야 하나요?">Plug-In 설치가 자동으로 안되요. 어떻게 해야 하나요?</a></td>
  </tr>
  <tr id="tr1" style="display: none;">
  	<td colspan="3">
[MS 누적 보안 업데이트(KB3058515) 설치에 따른 실패]<br><br>
* 2015년 6월에 진행된 MS 공식 업데이트 중 하나인 누적 보안 업데이트(KB3058515)가 설치된 경우<br>
CAB 을 통한 ActiveX 설치시 "이 웹사이트의 추가 기능을 실행하지 못했습니다." 라는 오류문구가 나오며 설치되지 않습니다.<br><br>

 * 해결방법 : IE 를 관리자권한으로 실행하거나 수동설치파일을 이용하면 정상적으로 설치됩니다.<br>
- 일반결제 수동설치 : http://www.allatpay.com/download/component/AllatPayRESetup.exe<br>
- 달러결제 수동설치 : http://www.allatpay.com/download/component/AllatPayENSetup.exe<br><br>

 [SHA2 알고리즘 업데이트에 따른 수동설치 안내]<br>
결제 고객이 SHA2 인증서를 지원하지 않는 Windows XP 서비스팩 2이하 버전의 환경에서<br>
결제를 진행할 경우, 결제에 실패하게 됩니다.<br>
- 원도우XP SP2 이하버전 수동설치 : https://www.allatpay.com/download/component/AllatPayRESetup_XP.exe<br><br>

 ※ 수동설치를 통해 결제모듈을 설치하실 경우 해당 결제페이지를 "새로고침"하셔야만 웹브라우저에서 모듈을 인지하고 정상 결제 처리될 수 있습니다.<br></td>
  </tr>
  <tr>
    <td><img src="${pageContext.request.contextPath}/images/point/bu_num_2.gif"></th>
    <td>결제관련 문의</th>
    <td><a href="javascript:doDisplay2();" title="ISP(일반결제)가 무엇입니까?">ISP(일반결제)가 무엇입니까?</a></td>
  </tr>
   <tr id="tr2" style="display: none;">
  	<td colspan="3">
온라인 전자상거래상에서 KB국민, BC, 광주, 신협, 수협카드로 결제하는 모든 회원을 대상으로<br>
보다 안전하고 편리하게 인터넷결제가 이루어 질 수 있도록 지원하는 결제서비스입니다.<br><br>

KB국민, BC, 광주, 신협, 수협카드 결제 시 카드번호, 유효기한 등을 입력하지 않고<br><br>
회원님께서 인터넷을 통해 직접 등록하신 인터넷결제전용 비밀번호(ISP비밀번호)를 입력하시면 됩니다.<br><br>

인터넷 전용 비밀번호의 등록 및 결제는<br>
KB국민, BC, 광주, 신협, 수협카드 홈페이지를 통해 실시간으로 이루어집니다.<br>
  	</td>
  </tr>
  <tr>
    <td><img src="${pageContext.request.contextPath}/images/point/bu_num_3.gif"></th>
    <td>NonActiveX 문의</th>
    <td><a href="javascript:doDisplay3();" title="윈도우 10을 이용시 반드시 Non Actice X를 사용해야 하나요?">윈도우 10을 이용시 반드시 Non Actice X를 사용해야 하나요?</a></td>
  </tr>
   <tr id="tr3" style="display: none;">
  	<td colspan="3">
윈도우 10의 Edge를 이용하고 계시다면 NonActiveX를 이용해야 합니다.<br>
MS의 정책산 Edge에서는 ActiveX를 제공하지 않습니다.<br>
따라서 NonActiveX를 이용해 결제해주시기 바랍니다.<br><br>

다만 윈도우10의 IE를 이용하시면 기존과 동일하게 ActiveX를 이용하실 수 있습니다.<br>
  	</td>
  </tr>
  <tr>
  	  <td><img src="${pageContext.request.contextPath}/images/point/bu_num_4.gif"></td>
  	  <td>결제관련 문의</td>
  	  <td><a href="javascript:doDisplay4();" title="해외카드 결제시 에러가 발생됩니다. 왜 그런가요?">해외카드 결제시 에러가 발생됩니다. 왜 그런가요?</a></td>
  </tr>
  <tr id="tr4" style="display: none;">
  	<td colspan="3">
해외카드 결제시 인증을 위한 3가지 필수조건이 모두 충족이 되어야 인증처리가 됩니다.<br>
1. 해당 카드사가 VISA 3D Secure에 가입되어 있어야 합니다.<br>
2. 해당카드사가 3D Secure에 가입되어 있어야 합니다<br>
3 .고객이 3D Secure에 카드를 등록해야 합니다.<br><br>

[에러해결방법]<br>
 301 : Bin Range   체크불가<br>
 304 : 가입여부를 체크 할 수 없음<br>
 311 : 가입여부 인자오류 해당 카드사로 문의하시기 바랍니다.<br>
 302 : Card bin range server에 Bin range가 등록되지 않음 해당 카드사로 문의하시기 바랍니다<br>
 303 : 고객이 안심클릭에 가입되어 있지 않음 결제창에서 안심클릭을 등록하신후 결제하시기 바랍니다.<br>
  	</td>
  </tr>
  </tbody>
</table>
</body>
<script>
var bDisplay = true;
function doDisplay(){
	var con = document.getElementById("tr1");
	if(con.style.display=='none'){
		con.style.display = 'revert';
	}else{
		con.style.display = 'none';
	}
}
</script>
<script>
var bDisplay = true;
function doDisplay2(){
	var con = document.getElementById("tr2");
	if(con.style.display=='none'){
		con.style.display = 'revert';
	}else{
		con.style.display = 'none';
	}
}
</script>
<script>
var bDisplay = true;
function doDisplay3(){
	var con = document.getElementById("tr3");
	if(con.style.display=='none'){
		con.style.display = 'revert';
	}else{
		con.style.display = 'none';
	}
}
</script>
<script>
var bDisplay = true;
function doDisplay4(){
	var con = document.getElementById("tr4");
	if(con.style.display=='none'){
		con.style.display = 'revert';
	}else{
		con.style.display = 'none';
	}
}
</script>

</html>