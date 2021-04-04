<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
전체 검색 view 페이지 입니다. 

-->
<html>
	<head>
		<title>"검색키워드" | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
	</head>
	
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		<p></p>
		<!-- Main -->
		<div id="main">
			
			<!-- Logo & SearchBar-->
			<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
			<!-- //검색 게시판 -->
			
			<section id="banner">
				<article class="column col4">
					<article class="column col5">
						<h4 class="col_tit"> "키워드" 전체 검색 결과</h4>
						<p class="col_desc"> "키워드"에 대한 내용 결과 입니다.</p>
					</article>
									<table>
										<tbody>
											<tr>
												<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
													검색하신 "
													<b><font color="f75151">키워드</font></b>
													"에 대한 검색 결과가 없습니다.  </td>
													<!-- if 있으면 "결과 입니다." -->
												</tr>
											</tbody>
										</table>
										<form method="post" action="#" style="margin-bottom: 30%;">
											<select name="category" class="button primary icon solid fa-search" id="category" 
											style="font-size: 10px; width: 10%; padding: 0;">
													<option value="recent">등록일순</option>
													<option value="view">조회순</option>
													<option value="likes">추천순</option>
												</select>
										 
												<div class="table-wrapper">
													<table class="alt">
														<thead>
															<tr>
																<th>추천</th>
																<th style="text-align: center;">제목</th>
																<th>닉네임</th>
																<th>조회수</th>
																<th>날짜</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>0</td>
																<td>안녕하세요</td>
																<td>corner </td>
																<td>1</td>
																<td>17:43</td>
															</tr>
															<tr>
																<td>0</td>
																<td>안녕하세요</td>
																<td>corner </td>
																<td>1</td>
																<td>03-26</td>
															</tr>
														</tbody>
													</table>
													
													
													 
												</div>
								</form>
										<div id="two" style="text-align: center; vertical-align: middle; ">
												  <div class="button primary small" style="width: 15%;">
													 <a href="${pageContext.request.contextPath}/">이전</a>
													 </div>
												  <div class="button primary small" style="width: 5%;">
															 <!-- 페이지 수 --> 
															 <a href="${pageContext.request.contextPath}/">1</a>
												   </div>
												   <div class="button primary small" style="width: 15%;">
													 <a href="${pageContext.request.contextPath}/">다음</a>
												   </div>
										</div>
							</article>
						</section>
				
						<article class="column col6">
							<h4 class="col_tit">사용자 "현재 위치"와 관련된 검색 결과 입니다.</h4>
							<!-- 사용자의 위치를 받아 기반으로 사용자 검색 결과가 내 주변 위주로 조회 -->
							<p class="col_desc"> 현재 위치는 "position" 입니다. </p>
						</article>
			<section id="two" class="wrapper style1 spotlight alt">
					<div class="content">
						<div class="inner">
							<h2> 크리스마스 50% 세일 </h2>
							<p>
								코리아IT학원 강남점에서 크리스마스 최대 50% 수강료를 할인 하고 있습니다! 
								
							</p>
							<ul class="actions">
								<li><a href="#" class="button">자세히 보기</a></li>
							</ul>
						</div>
					</div>
					<div class="image">
						<img src="${pageContext.request.contextPath}/images/banner/ADbanner2.jpg" width="360px;" height="240px;" alt="" />
					</div>
				

				
			</section>


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>