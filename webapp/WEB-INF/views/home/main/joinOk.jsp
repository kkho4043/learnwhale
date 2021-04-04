<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

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
			<div id="contentArea" class="container">

				<!-- 홈 메인페이지 영역 -->

				<div id="position-parents" style="height: 534px;">
					<div>
						<img id="img-Area" src="">
					</div>
					<div class="position container-fluid" id="div-position">
						<div class="row">
							<div class="container">
								<div class="row" id="all-Area">


									<!-- <div class="col-sm-2"></div> -->
									<div class="col-sm-12">

										<div id="user">
											<div id="joinOK">
												<div class="imgW">
													<img class="imgWelcome" src="${pageContext.request.contextPath}/assets/image/welcome.jpg">
												</div>
												<p class="text-large bold joinOk" style="">
													회원가입을 축하합니다.<br> <br> <a
														href="${pageContext.request.contextPath}/user/loginForm">[ 로그인하기 ]</a>
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
	<c:import url="/WEB-INF/views/home/include/footer.jsp"></c:import>
	<!-- //footer-Area -->

</body>
</html>