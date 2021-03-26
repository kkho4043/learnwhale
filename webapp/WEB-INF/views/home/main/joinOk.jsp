<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/home/maink.css"
	rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/home/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- content-Area -->
	<div class="container-fluid">
		<div class="row">
			<div id="content-Area" class="container">

				<!-- 홈 메인페이지 영역 -->

				<div id="position-parents">
					<div>
						<img id="img-Area" src="">
					</div>
					<div class="container-fluid" id="div-position">
						<div class="row">
							<div class="container">
								<div class="row" id="all-Area">


									<!-- <div class="col-sm-2"></div> -->
									<div class="col-sm-12">

										<div id="user">
											<div id="joinOK">

												<p class="text-large bold joinOk" style="padding-left: 400px;">
													회원가입을 축하합니다.<br> <br> <a
														href="${pageContext.request.contextPath}/user/loginForm">[로그인하기]</a>
												</p>

											</div>
											<!-- //joinOK -->
										</div>
										<!-- //user -->

									</div>
								</div>
							</div>
							<!-- //container -->
						</div>
					</div>
					<!-- //body -->
				</div>

				<!-- //홈 메인페이지 영역 -->


			</div>
			<!-- //container-->
		</div>
		<!-- //row -->
	</div>
	<!-- //content-Area -->


	<!-- footer-Area -->
	<div id="footer-Area" class="container-fluid">
		<div class="row">
			<div id="" class="container">
				<div id="footer" class="col-xs-12 text-left">
					<ul class="clearfix">
						<li>개인정보보호정책</li>
						<li>이용약관</li>
						<li>무단수집거부</li>
						<li>찾아오시는 길</li>
						<li class="last">관리자메일</li>
					</ul>

					<p>COPY RIGHT© 풀스택B반 시험조 ALL RIGHTS RESERVED</p>
				</div>
			</div>
			<!-- //container-->
		</div>
		<!-- //row -->
	</div>
	<!-- //footer-Area -->

</body>
</html>