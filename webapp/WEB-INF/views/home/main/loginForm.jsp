<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/maink.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeBanList.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

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
					<div class="container-fluid" id="div-position">
						<div class="row">
							<div class="container">
								<div class="row" id="all-Area" style="margin-top: 110px;">


									<!-- 로그인 시 나오는 창 -->
									<div class="row" id="input-Area">
										<div id="joinform">
											<span id="join"></span> <!-- 로그인 -->
										</div>
										<div class="col-sm-12">
											<form class="form-inline" method="get" action="${pageContext.request.contextPath}/user/login">
												<div class="col-sm-12 joinArea">
													<div class="form-group">
														<div class="col-sm-12">
															<label for="id-margin" id="idArea">아이디</label>
														</div>
														<input type="text" class="form-control" id="id-margin" name="id" placeholder="아이디를 입력해 주세요.">
													</div>
													<!-- //form-group -->
												</div>

												<div class="col-sm-12 joinArea">
													<div class="form-group">
														<div class="col-sm-12">
															<label for="password" id="pwArea">비밀번호</label>
														</div>
														<input type="text" class="form-control" id="password" stlye="margin-bottom: 14px;" name="password" placeholder="비밀번호를 입력해 주세요.">
													</div>
												</div>
												<c:if test="${param.result =='fail' }">
													<p id="retry">로그인에 실패했습니다. 다시 로그인 해주세요</p>
												</c:if>
												<div class="col-sm-12">
													<button type="submit" class="btn btn-defalut Btn_i">로그인</button>
												</div>
												<div class="col-sm-12">
													<a href="${pageContext.request.contextPath}/user/joinForm" style="font-color: #75ACDC;"><button type="button" class="btn btn-defalut Btn_j">회원가입</button></a>
												</div>

												<!-- //joinArea -->
											</form>
											<!-- //form -->
										</div>
										<!-- //col-sm-12 -->
									</div>
									<!-- //row -->

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