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


						<div class="col-sm-12">


							<div class="row" id="input-Area">
								<div id="joinform">
									<span id="join">회원가입</span>
								</div>
								
								<div class="col-sm-12">
									<form class="form-inline">
										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="id-margin" id="idArea">아이디</label>
												</div>
												<input type="text" class="form-control" id="id-margin" placeholder="아이디를 입력해 주세요.">
											</div>
											<!-- //form-group -->
										</div>

										<div class="col-sm-12 joinArea">
											<div>
												<!-- 한줄로 합치기 -->
												<div class="col-sm-5">
													<div class="form-group">
														<div class="">
															<label for="password" id="pwArea">비밀번호</label>
														</div>
														<input type="text" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요.">
													</div>
												</div>
												<!-- //joinArea -->
		
												<div  class="col-sm-5">
													<div class="form-group">
														<div class="">
															<label for="check-password" id="check-pwArea">비밀번호 확인</label>
														</div>
														<input type="text" class="form-control" id="check-password" placeholder="비밀번호를 다시 입력해 주세요.">
													</div>
												</div>
												<!-- //joinArea -->								
											</div>
										
										
										
										</div>


										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="name" id="nameArea">이름</label>
												</div>
												<input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요.">
											</div>
										</div>
										<!-- //joinArea -->

										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="phoneNo" id="phoneArea">전화번호</label>
												</div>
												<input type="text" class="form-control" id="phoneNo" placeholder="이름을 입력해 주세요.">
											</div>
										</div>
										<!-- //joinArea -->

										<div class="form-group joinArea" id="agreeArea">
											<input type="checkbox" id="chk-agree" value="" name=""> <label for="chk-agree">서비스 약관에 동의합니다.</label>
										</div>
										<!-- //joinArea -->

										<div class="col-sm-12 joinArea">
											<div class="form-group joinArea" id="agreeArea">
												<hr class="hr">
											</div>
										</div>
										<!-- //joinArea -->

										<div class="col-sm-12 anotherJoin-Area">
											<a id="anotherJoin" href="">카카오로 회원가입</a>
										</div>

									</form>
									<!-- //form -->
								</div>
								<!-- //col-sm-12 -->
							</div>
							<!-- //row -->

		<!-- //회원가입 화면 -->

						
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