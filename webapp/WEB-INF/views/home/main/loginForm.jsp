<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/maink.css" rel="stylesheet" type="text/css">


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
			<div id="content-Area"  class="container">
				
				<!-- 홈 메인페이지 영역 -->
				
				<div id="position-parents">
		<div>
			<img id="img-Area" src="">
		</div>
		<div class="container-fluid" id="div-position">
			<div class="row">
				<div class="container">
					<div class="row" id="all-Area">


							<!-- 로그인 시 나오는 창 -->
							 <div class="row" id="input-Area">
								<div id="joinform">
									<span id="join">로그인</span>
								</div>
								<div class="col-sm-12">
									<form class="form-inline" method="get" action="${pageContext.request.contextPath}/login">
										<div class="col-sm-12 joinArea" >
											<div class="form-group">
												<div class="col-sm-12">
													<label for="id-margin" id="idArea">아이디</label>
												</div>
												<input type="text" class="form-control" id="id-margin"  name="id" placeholder="아이디를 입력해 주세요.">
											</div>
											<!-- //form-group -->
										</div>

										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="password" id="pwArea">비밀번호</label>
												</div>
												<input type="text" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해 주세요.">
											</div>
										</div>
										<div class="col-sm-12">
											<button type="submit" class="btn btn-primary Btn_i">로그인</button>
										</div>
										<div class="col-sm-12">
											<button type="button" class="btn btn-primary Btn_i">회원가입</button>
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
	<div id="footer-Area" class="container-fluid">
		<div class="row">
			<div id="" class="container">
				<div id="footer" class="col-xs-12 text-left">
					<ul class="clearfix">
						<li >개인정보보호정책</li>
						<li >이용약관</li>
						<li >무단수집거부</li>
						<li >찾아오시는 길</li>
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