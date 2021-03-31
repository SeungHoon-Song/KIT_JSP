<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
-->
<html>
<head>
<title>내가 쓴 글 | 이벤트 모아(Event Moa)</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="author" content="corner3499">
<!-- title Icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/title-icon.png">
<style>
.fa-search {
	width: 20%;
}

@media screen and (max-width: 670px) {
	#category {
		display: none;
		padding-left: 10%;
	}
}
.td_article{
	display: flex;
}
.td_date{
	text-align: center;
}
</style>
</head>

<body class="is-preload">
	<!-- sideBar -->
	<jsp:include
		page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
	<!-- Header -->
	<jsp:include
		page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

	<!-- Main -->
	<div id="main">
		<!-- Logo -->
		<jsp:include
			page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		<form name="myPage" action="" method="post">
			<section id="banner">
				<article class="column col4">
					<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center;">내가 쓴 댓글</h1>
						 <br>
					<table>
						<colgroup>
							<col>
							<col style="width: 120px">
							<col style="width: 100px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" style="text-align: center;"><span class="article_title">댓글</span></th>
								<th scope="col" style="text-align: center;">작성일</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td class="td_article">
									<div class="check_box">
										<input type="checkbox" name="reply_chk" id="reply3_chk"
											value="reply3"><label for="reply3_chk"></label>
									</div>

									<div class="board-list">
										<div class="inner_list">
											<a href="#" title="test"
												target="_blank"> 어떤가요?
											</a>
										</div>
									</div>
								</td>

								<td class="td_date">03-31</td>
							</tr>



							<tr>
								<td class="td_article">
									<div class="check_box">
										<input type="checkbox" name="reply_chk" id="reply2_chk"
											value="reply2"><label for="reply2_chk"></label>
									</div>

									<div class="board-list">
										<div class="inner_list">
											<a href="#" title="test"
												target="_blank"> 지금은 많이 바뀌었네요~
											</a>
										</div>
									</div>
								</td>

								<td class="td_date">03-29</td>
							</tr>
							
							
							
							<tr>
								<td class="td_article">
									<div class="check_box">
										<input type="checkbox" name="reply_chk" id="reply1_chk"
											value="reply1"><label for="reply1_chk"></label>
									</div>

									<div class="board-list">
										<div class="inner_list">
											<a href="#" title="test"
												target="_blank"> 감사합니다.
											</a>
										</div>
									</div>
								</td>

								<td class="td_date">03-27</td>
							</tr>



						</tbody>
					</table>
					
        
            <div class="fl">
                <div class="check_box">
                    <input type="checkbox" name="selectAll" id="selectAll" onclick="checkAll();" style="float: left;">
                    <label for="selectAll">전체선택</label>
                	<div class="button small" style="width: 15%; float: right;">
							<a href="/">삭제</a>
						</div>
                </div>
            </div>
<br>


					<div id="two" style="text-align: center; vertical-align: middle;">
						<div class="button primary small" style="width: 15%;">
							<a href="/">이전</a>
						</div>
						<div class="button primary small" style="width: auto;">
							<!-- 페이지 수 -->
							&nbsp; <a href="/">&nbsp;</a>
						</div>
						<div class="button primary small" style="width: 15%;">
							<a href="/">다음</a>
						</div>
					</div>

	</article>
	</section>

	</form>



	</div>
	<!-- div id="main" end -->

	<!-- Footer -->
	<jsp:include
		page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

</body>
<script>
function checkAll(){
    if( $("#selectAll").is(':checked') ){
      $("input[name=reply_chk]").prop("checked", true);
    }else{
      $("input[name=reply_chk]").prop("checked", false);
    }
}
</script>
</html>