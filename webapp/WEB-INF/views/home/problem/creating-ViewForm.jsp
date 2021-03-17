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
<link href="${pageContext.request.contextPath}/assets/css/home/problem.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/creating-Problem.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/home/category.css">

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
			<div id="content-Area" class="container">

				<!-- 왼쪽메뉴 -->
				<c:import url="/WEB-INF/views/home/include/aside.jsp"></c:import>
				<!-- //왼쪽메뉴 -->

				<div id="main" class="col-xs-10">
					<div id="content-title-area" class="row">
						<div id="content-title" class="col-xs-8">문제관리</div>
						<div id="breadcrumb-area" class="col-xs-4">
							<ol class="breadcrumb pull-right">
								<li class="breadcrumb-item">홈</li>
								<li class="breadcrumb-item">마이클래스</li>
								<li class="breadcrumb-item">문제만들기</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->

					<div id="content-body-area" class="row">
						<c:import url="/WEB-INF/views/home/include/category.jsp"></c:import>
						<div class="container-fluid">
							<div class="row">
								<div class="container">
									<div class="row">
										<div class="col-xs-9" id="Creat-Title">문제 작성지</div>


										<div class="col-xs-9">
											<div class="row col-xs-9">
												<div class="col-sm-4 problemType">
													<button type="button" class="btn btn-warning" id="mcF">객관식</button>
												</div>
												<div class="col-sm-4 problemType">
													<button type="button" class="btn btn-info" id="oxF">OX문제</button>
												</div>
												<div class="col-sm-4 problemType">
													<button type="button" class="btn btn-success" id="sjF">주관식</button>
												</div>
											</div>
											<!-- //row -->


											<div class="row">
												<div class="col-xs-9" id="make-problem">
													<form action="#" method="post">
														<div class="form-group">
															<input type="text" class="form-control" value="역사 시험" placeholder="문제 제목을 입력해주세요.">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" value="다음 한글을 만든 인물은 누구인가?" placeholder="문제를 입력해주세요.">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
														</div>
														<div class="form-group" id="img-file">
															<input type="file">
														</div>
														<div class="form-group" id="last-makeType">
															<input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요.">
														</div>

														<!-- 객관식문제 시작 -->
														<div id="mc-Area">
															<div class="row answer-content">
																<div class="col-xs-12">
																	<h4>각 문항에 내용을 입력해주세요.</h4>
																</div>
																<div class="col-sm-1 answer-num">
																	<strong>1</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control" id="exampleInputEmail3" value="이순신" placeholder="The first answer">
																</div>
																<div class="col-xs-2">
																	<input type="checkbox" id="check-first"> <label class="checkBox" for="check-first">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>2</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control" id="exampleInputEmail3" value="세종대왕" placeholder="The second answer">
																</div>
																<div class="col-xs-2">
																	<input type="checkbox" id="check-second"> <label class="checkBox" for="check-second">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>3</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control" id="exampleInputEmail3" value="장수왕" placeholder="The third answer">
																</div>
																<div class="col-xs-2">
																	<input type="checkbox" id="check-third"> <label class="checkBox" for="check-third">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>4</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control" id="exampleInputEmail3" value="유재석" placeholder="The fourth answer">
																</div>
																<div class="col-xs-2">
																	<input type="checkbox" id="check-fourth"> <label class="checkBox" for="check-fourth">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file">
															</div>
														</div>
														<!-- //fileArea -->
														<!-- 객관식 문제 끝 -->

														<!-- ox문제 시작 -->
														<div class="row" id="ox-Area">
															<div class="col-xs-12">
																<h4>정답을 선택해주세요</h4>
															</div>
															<!-- //col-sm-12 -->
															<div class="col-xs-6">
																<div>
																	<input id="quizAnswerO" type="radio" name="radio-answer">
																</div>
																<div id="O">
																	<label class="" for="quizAnswerO">O</label>
																</div>
															</div>
															<!-- //col-sm-6 -->
															<div class="col-xs-6">
																<div>
																	<input id="quizAnswerX" type="radio" name="radio-answer">
																</div>
																<div id="X">
																	<label class="" for="quizAnswerX">X</label>
																</div>
															</div>
															<!-- //col-sm-6 -->
														</div>
														<!-- //row -->
														<!-- ox문제 끝 -->

														<!-- 주관식 문제 시작 -->
														<div class="row answer-content" id="sj-Area">
															<div class="col-sm-12">
																<h4>정답을 적어주세요.</h4>
															</div>
															<div class="col-sm-12" id="last-input">
																<input type="text" class="form-control" id="exampleInputEmail3" value="이순신 장군">
															</div>
														</div>
														<!-- //answer-content -->
														<!-- 주관식 문제 끝 -->

													</form>
													<!-- //form -->
												</div>
												<!-- //col-sm-12 -->
											</div>
											<!-- //row -->

											<div class="col-xs-4">
												<a id="out" href="">나가기</a>
											</div>
											<div class="col-xs-5">
												<button type="submit" class="btn btn-primary" id="save">수정하기</button>
											</div>

										</div>
									</div>
								</div>
								<!-- //container -->
							</div>
						</div>

					</div>
					<!-- //col-xs-9 -->
				</div>
				<!-- //content-body-area -->

				<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->

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
<script type="text/javascript">
	$(document).ready(function() {
		$("#ox-Area").hide();
		$("#sj-Area").hide();

		$("#oxF").click(function() {
			$("#ox-Area").show();
			$("#mc-Area").hide();
			$("#sj-Area").hide();
		});

		$("#sjF").click(function() {
			$("#ox-Area").hide();
			$("#mc-Area").hide();
			$("#sj-Area").show();
		});

		$("#mcF").click(function() {
			$("#ox-Area").hide();
			$("#mc-Area").show();
			$("#sj-Area").hide();
		});

	});
</script>
</html>
