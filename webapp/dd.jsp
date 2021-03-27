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
											<form id="prblemForm" action="${pageContext.request.contextPath}/myclass/problem/creating" method="post" enctype="multipart/form-data">
												<div class="row col-xs-9">

													<div class="col-sm-4 problemType">
														<input type="radio" class="mcF" id="typeMc" name="type" value="객관식" checked="checked">
													</div>
													<div class="col-sm-4 problemType">
														<input type="radio" class="oxF" id="typeOx" name="type" value="OX문제">
													</div>
													<div class="col-sm-4 problemType">
														<input type="radio" class="sjF" id="typeSj" name="type" value="주관식">
													</div>
												</div>

												<div class="row col-xs-9">
													<div class="col-sm-4 problemType radioArea">
														<label for="typeMc">객관식</label>

													</div>
													<div class="col-sm-4 problemType radioArea">
														<label for="typeOx">OX문제</label>

													</div>
													<div class="col-sm-4 problemType radioArea">
														<label for="typeSj">주관식</label>

													</div>
												</div>
												<input type="hidden" name="cateNo" value="${param.cateNo}">
												<!-- //row -->

												<div class="row">
													<div class="col-xs-9" id="make-problem">

														<div class="form-group">
															<input type="text" class="form-control" id="problemTitle" placeholder="문제 제목을 입력해주세요." name="problemTitle" value="">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" id="content" placeholder="문제를 입력해주세요." name="content" value="">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
														</div>
														<div class="form-group" id="img-file">
															<input type="file" name="Image" value="">
														</div>
														<div class="form-group" id="last-makeType">
															<input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요." name="description" value="">
														</div>

														<!-- //col-sm-12 -->
														<div class="mc-Area">
															<div class="row answer-content">
																<div class="col-xs-12">
																	<h4>각 문항에 내용을 입력해주세요.</h4>
																</div>
																<div class="col-sm-1 answer-num">
																	<strong>1</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control choiceContent" placeholder="The first answer" name="choiceContent1">
																</div>
																<div class="col-xs-2">
																	<input type="checkBox" class="mc-answer" name="answer" id="check-first" value="1"> <label for="check-first">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file" name="Image1" id="asd">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>2</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control choiceContent" placeholder="The second answer" name="choiceContent2">
																</div>
																<div class="col-xs-2">
																	<input type="checkBox" class="mc-answer" name="answer" id="check-second" value="2"> <label for="check-second">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file" name="Image2">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>3</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control choiceContent" placeholder="The third answer" name="choiceContent3">
																</div>
																<div class="col-xs-2">
																	<input type="checkBox" class="mc-answer" name="answer" id="check-third" value="3"> <label for="check-third">정답체크</label>
																</div>
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea">
																<input type="file" name="Image3">
															</div>
															<!-- //fileArea -->

															<div class="row answer-content">
																<div class="col-xs-1 answer-num">
																	<strong>4</strong>
																</div>
																<div class="col-xs-9">
																	<input type="text" class="form-control choiceContent" placeholder="The fourth answer" name="choiceContent4">
																</div>
																<div class="col-xs-2">
																	<input type="checkBox" class="mc-answer" name="answer" id="check-fourth" value="4"> <label for="check-fourth">정답체크</label>
																</div>

															</div>
															<div class="col-xs-12 fileArea">
																<input type="file" name="Image4">
															</div>
															<!-- //answer-content -->
															<div class="col-xs-12 fileArea"></div>
														</div>
														<!-- //fileArea -->

														<!-- ox문제 시작 -->
														<div class="row ox-Area">
															<div class="col-xs-12">
																<h4>정답을 선택해주세요</h4>
															</div>
															<!-- //col-sm-12 -->
															<div class="col-xs-6">
																<div>
																	<input id="quizAnswerO" class="ox-answer" type="radio" name="answer" value="O">
																</div>
																<div id="O">
																	<label for="quizAnswerO">O</label>
																</div>
															</div>
															<!-- //col-sm-6 -->
															<div class="col-xs-6">
																<div>
																	<input id="quizAnswerX" class="ox-answer" type="radio" name="answer" value="X">
																</div>
																<div id="X">
																	<label for="quizAnswerX">X</label>
																</div>
															</div>
															<!-- //col-sm-6 -->
														</div>
														<!-- //row -->
														<!-- ox문제 끝 -->

														<!-- 주관식 문제 시작 -->
														<div class="row answer-content sj-Area">
															<div class="col-sm-12">
																<h4>정답을 적어주세요.</h4>
															</div>
															<div class="col-sm-12" id="last-input">
																<input type="text" class="form-control sj-answer" name="answer" value="">
															</div>
														</div>
														<!-- //answer-content -->
														<!-- 주관식 문제 끝 -->


													</div>
													<!-- //col-sm-12 -->
												</div>
												<!-- //row -->

												<div class="col-xs-4">
													<a id="out" href="">나가기</a>
												</div>
												<div class="col-xs-5">
													<button type="submit" class="btn btn-primary" id="save">저장하기</button>
												</div>
											</form>
											<!-- //form -->
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
	/* 시작할때 */
	$(document).ready(function() {

		/* 입력폼출력 */
		$(".mc-Area").show();
		$(".ox-Area").hide();
		$(".sj-Area").hide();

		//console.log($(".ox-Area .answer").val());

		//var a = $(".ox-Area .answer").attr("name", "none");

	});

	/* OX문제방식 선택할때 */
	$(".oxF").on("click", function() {

		/* 폼초기화 */
		formReset();

		/* 입력폼출력 */
		$(".mc-Area").hide();
		$(".ox-Area").show();
		$(".sj-Area").hide();

		//$(".mc-Area .answer").attr("name", "none");
		//$(".ox-Area .answer").attr("name", "answer");

		$('.oxF').prop('checked', true);
	});

	/* 주관식문제방식 선택할때 */
	$(".sjF").on("click", function() {
		/* 폼초기화 */
		formReset();

		/* 입력폼출력 */
		$(".mc-Area").hide();
		$(".ox-Area").hide();
		$(".sj-Area").show();

		$('.sjF').prop('checked', true);
	});

	/* 객관식문제방식 선택할때 */
	$(".mcF").on("click", function() {

		/* 폼초기화 */
		formReset();

		/* 입력폼출력 */
		$(".mc-Area").show();
		$(".ox-Area").hide();
		$(".sj-Area").hide();

		//$(".ox-Area .answer").attr("name", "none");
		//$(".mc-Area .answer").attr("name", "answer");

		$('.mcF').prop('checked', true);
	});

	/* 빈칸 여부 체크하기 */
	$("#prblemForm").on("submit", function() {
		console.log($(".row answer-content sj-Area .answer").val());

		var problemTitle = $("#problemTitle").val();
		var content = $("#content").val();
		var answer = $("input[name=answer]");

		if (!problemTitle) {
			alert("문제 제목을 입력해 주세요.");
			return false;
		}

		/* 문제지문 체크 */
		if (!content) {
			alert("문제 지문을 입력해 주세요.");
			return false;
		}

		//typeSj typeOx

		if ($("#typeMc").is(":checked") == true) {

			if (!$("input[name=choiceContent1]").val()) {
				alert("보기 1번 입력해주세요");
				return false;
			} else if (!$("input[name=choiceContent2]").val()) {
				alert("보기 2번 입력해주세요");
				return false;
			} else if (!$("input[name=choiceContent3]").val()) {
				alert("보기 3번 입력해주세요");
				return false;
			} else if (!$("input[name=choiceContent4]").val()) {
				alert("보기 4번 입력해주세요");
				return false;
			} else if ($(".mc-Area .answer").is(":checked") == false) {
				console.log("객관식");
				alert("정답을 체크해주세요");
				return false;
			}

		}

		if ($("#typeOx").is(":checked") == true) {

			if ($('input:radio[name=answer]').is(':checked') == false) {
				console.log("ox");
				alert("정답을 체크해주세요");
				return false;
			}

		}

		if ($("#typeSj").is(":checked") == true) {

			if (!$(".sj-Area .answer").val()) {
				console.log("주관식")
				alert("정답을 입력해주세요");
				return false;
			}

		}

	});

	/* 문제입력폼 리셋 */
	function formReset() {
		$("#prblemForm").each(function() {
			this.reset();
		});
	}
</script>
</html>