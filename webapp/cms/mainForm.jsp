<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/main.css">


<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<c:import url="/cms/header.jsp"></c:import>

<title>Insert title here</title>

</head>
<body>
	<div id="position-parents">
		<div>
			<img id="img-Area" src="/learnwhale/assets/image/KakaoTalk22.jpg">
		</div>
		<div class="container-fluid" id="div-position">
			<div class="row">
				<div class="container">
					<div class="row" id="all-Area">


						<div class="col-sm-2"></div>
						<div class="col-sm-8">


							<div class="row" id="input-Area">
								<div id="Creat-Title">
									<span id="Title-Color">회원가입</span>
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
											<div class="form-group">
												<div class="col-sm-12">
													<label for="password" id="pwArea">비밀번호</label>
												</div>
												<input type="text" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요.">
											</div>
										</div>
										<!-- //joinArea -->

										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="check-password" id="check-pwArea">비밀번호 확인</label>
												</div>
												<input type="text" class="form-control" id="check-password" placeholder="비밀번호를 다시 입력해 주세요.">
											</div>
										</div>
										<!-- //joinArea -->

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

							<!-- 로그인 시 나오는 창 -->
							<!-- <div class="row" id="input-Area">
								<div id="Creat-Title">
									<span id="Title-Color">로그인</span>
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
											//form-group
										</div>

										<div class="col-sm-12 joinArea">
											<div class="form-group">
												<div class="col-sm-12">
													<label for="password" id="pwArea">비밀번호</label>
												</div>
												<input type="text" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요.">
											</div>
										</div>
										<div class="col-sm-12">
											<button type="button" class="btn btn-info Btn">로그인</button>
										</div>
										<div class="col-sm-12">
											<button type="button" class="btn btn-info Btn">회원가입</button>
										</div>
										
										//joinArea
									</form> -->
								<!--//form -->
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
</body>
</html>