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

										<div class="row" id="input-Area">
											<div id="joinform">
												<span id="join">회원가입</span>
											</div>

											<div class="col-sm-12">
												<form class="form-inline" id="joinForm" method="get"
													action="${pageContext.request.contextPath}/user/join">
													<div class="col-sm-12 joinArea" style="padding-left:90px;">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="id-margin" id="idArea">아이디</label>
															</div>
															<input type="text" name="id" class="form-control"
																id="id-margin" placeholder="아이디를 입력해 주세요.">
															<button type="button" id="btnCheck">중복체크</button>	
														</div>
														<!-- //form-group -->
													</div>
													
													<p id="msg">
														<!-- 아이디 사용가능 여부 메세지 -->
													</p>

													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="password" id="pwArea">비밀번호</label>
															</div>
															<input type="text" class="form-control" id="password"
																name="password" placeholder="비밀번호를 입력해 주세요.">
														</div>
													</div>
													<!-- //joinArea -->

													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="pwCheck" id="pwArea">비밀번호</label>
															</div>
															<input type="text" class="form-control" id="pwCheck"
																name="" placeholder="비밀번호를 확인해 주세요.">
														</div>
													</div>
													<!-- //joinArea -->

													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="name" id="nameArea">이름</label>
															</div>
															<input type="text" class="form-control" id="name"
																name="name" placeholder="이름을 입력해 주세요.">
														</div>
													</div>
													<!-- //joinArea -->


													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="email" id="nameArea">이메일</label>
															</div>
															<input type="text" class="form-control" id="email"
																name="email" placeholder="이메일을 입력해주세요.">
														</div>
													</div>
													<!-- //joinArea -->

													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="phoneNo" id="phoneArea">전화번호</label>
															</div>
															<input type="text" class="form-control" id="phoneNo"
																name="phoneNum" placeholder="전화번호를 입력해 주세요.">

														</div>
													</div>
													<!-- //joinArea -->
													
													<div class="col-sm-12 joinArea">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="profile" id="phoneArea">프로필</label>
															</div>
															<input type="file" class="form-control" id="profile"
																name="proFile" placeholder="프로필사진을 입력해주세요">

														</div>
													</div>
													<!-- //joinArea -->	
												

													<div  class="col-sm-12" id="btnArea">
														<button class="btn btn-primary btn-sm"
															type="submit">회원가입</button>
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
<script type="text/javascript">
	$("#btnCheck").on("click", function(){
		console.log("중복체크 버튼 클릭");
		var uid = $("#id-margin").val();
		console.log(uid);
	
		//ajax데이터만 받을때
		$.ajax({
			
			url : "${pageContext.request.contextPath }/user/idcheck",		
			type : "post",
			/* contentType : "application/json", */
			data : {id:uid},
			
			dataType : "text", 
			success : function(result){
				/*성공시 처리해야될 코드 작성*/
				if(result == 'can'){
					console.log("can");
					$("#msg").html("사용할수 있는 아이디 입니다.");
				}else{
					console.log("cant");
					$('#msg').html("사용할수 없는 아이디 입니다.")
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});

</script>
</html>
