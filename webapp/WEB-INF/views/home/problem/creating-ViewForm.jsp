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
											<form id="prblemForm" action="${pageContext.request.contextPath}/myclass/problem/modify" method="post" enctype="multipart/form-data">
												<input type="text" name="problemNo" value="${proVo.problemNo}">
												<div class="row col-xs-9">
													<c:choose>
														<c:when test="${proVo.type == '객관식'}">
															<div class="col-sm-12 problemType">
																<input type="radio" class="mcF" id="typeMc" name="type" value="객관식" checked="checked">
															</div>
														</c:when>
														<c:when test="${proVo.type == 'OX문제'}">
															<div class="col-sm-12 problemType">
																<input type="radio" class="oxF" id="typeOx" name="type" value="OX문제" checked="checked">
															</div>
														</c:when>
														<c:otherwise>
															<div class="col-sm-12 problemType">
																<input type="radio" class="sjF" id="typeSj" name="type" value="주관식" checked="checked">
															</div>
														</c:otherwise>
													</c:choose>
												</div>


												<div class="row col-xs-9">
													<c:choose>
														<c:when test="${proVo.type == '객관식'}">
															<div class="col-sm-12 problemType radioArea">
																<label for="typeMc">객관식</label>
															</div>
														</c:when>
														<c:when test="${proVo.type == 'OX문제'}">
															<div class="col-sm-12 problemType radioArea">
																<label for="typeOx">OX문제</label>
															</div>
														</c:when>
														<c:otherwise>
															<div class="col-sm-12 problemType radioArea">
																<label for="typeSj">주관식</label>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
												<!-- //row -->
												<input type="text" name="cateNo" value="${proVo.cateNo}">


												<div class="row">
													<div class="col-xs-9" id="make-problem">

														<div class="form-group">
															<input type="text" class="form-control" id="problemTitle" placeholder="문제 제목을 입력해주세요." name="problemTitle" value="${proVo.problemTitle}">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" id="content" placeholder="문제를 입력해주세요." name="content" value="${proVo.content}">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
														</div>
														<div class="form-group" id="img-file">
															<input type="file" name="Image" value="${proVo.contentImage }">
														</div>
														<div class="form-group" id="last-makeType">
															<input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요." name="description" value="${proVo.description}">
														</div>


														<!-- //col-sm-12 -->
														<div class="mc-Area">
															<div class="row answer-content">
																<c:choose>
																	<c:when test="${proVo.type == '객관식'}">
																		<div class="col-xs-12">
																			<h4>각 문항에 내용을 입력해주세요.</h4>
																		</div>
																	</c:when>
																</c:choose>
																<c:forEach items="${choVo}" var="choVo" varStatus="status">
																	<c:choose>
																		<c:when test="${proVo.type == '객관식'}">
																			<div class="col-sm-1 answer-num">
																				<strong>${status.count}</strong>
																			</div>
																			<div class="col-xs-9">
																				<input type="text" class="form-control" placeholder="The first answer" name="choiceContent" value="${choVo.choiceContent}"> <input type="text" name="choiceNo" value="${choVo.choiceNo}">
																			</div>


																			<div class="col-xs-2">
																				<input type="checkBox" class="answer" name="answer" id="check${choVo.orderNo}" value="${status.count}"> <label for="check${choVo.orderNo}">정답체크</label>
																			</div>



																			<div class="col-xs-12 fileArea">
																				<input type="file" name="Image${status.count}">
																			</div>
																			<div class="col-xs-12 fileArea"></div>
																		</c:when>
																	</c:choose>
																</c:forEach>
															</div>
															<!-- //answer-content -->




															<c:choose>
																<c:when test="${proVo.type == 'OX문제'}">

																	<div class="row ox-Area">
																		<div class="col-xs-12">
																			<h4>정답을 선택해주세요</h4>
																		</div>

																		<div class="col-xs-6">
																			<c:choose>
																				<c:when test="${proVo.answer == 'O' }">
																					<div>
																						<input id="checkO" class="answer" type="radio" name="answer" value="O" checked="checked">
																					</div>
																					<div id="O">
																						<label for="checkO">O</label>
																					</div>
																				</c:when>
																				<c:otherwise>
																					<div>
																						<input id="checkO" class="answer" type="radio" name="answer" value="O">
																					</div>
																					<div id="O">
																						<label for="checkO">O</label>
																					</div>
																				</c:otherwise>
																			</c:choose>
																		</div>
																		<!-- //col-sm-6 -->

																		<div class="col-xs-6">
																			<c:choose>
																				<c:when test="${proVo.answer == 'X'}">
																					<div>
																						<input id="checkX" class="answer" type="radio" name="answer" value="X" checked="checked">
																					</div>
																					<div id="X">
																						<label for="checkX">X</label>
																					</div>
																				</c:when>
																				<c:otherwise>
																					<div>
																						<input id="checkX" class="answer" type="radio" name="answer" value="X">
																					</div>
																					<div id="X">
																						<label for="checkX">X</label>
																					</div>
																				</c:otherwise>
																			</c:choose>
																		</div>

																	</div>

																</c:when>
															</c:choose>

															<!-- 주관식 문제 시작 -->
															<c:choose>
																<c:when test="${proVo.type == '주관식'}">
																	<div class="row answer-content sj-Area">
																		<div class="col-sm-12">
																			<h4>정답을 적어주세요.</h4>
																		</div>
																		<div class="col-sm-12" id="last-input">
																			<input type="text" class="form-control answer" name="answer" value="${proVo.answer}">
																		</div>
																	</div>

																</c:when>
															</c:choose>


														</div>
														<!-- //col-sm-12 -->
													</div>
													<!-- //row -->
												</div>

												<div class="col-xs-4">
													<a href="${pageContext.request.contextPath}/myclass/problem/problemList?cateNo=${proVo.cateNo}">
														<button type="button" id="out" class="btn btn-danger">나가기</button>
													</a>
												</div>
												<div class="col-xs-5">
													<button type="submit" class="btn btn-primary" id="save">수정하기</button>
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
	$(document).ready(function() {
		if("${proVo.type}" != '주관식'){
			var answer = "${proVo.answer}";
			var ar = answer.split(",");
			var num;
			console.log(ar);
			for (var i = 0; i < ar.length; i++) {
				num = ar[i];
				document.getElementById("check"+num).checked = true;
			}
		}
		

	});

	/* 빈칸 여부 체크하기 */
	$("#prblemForm").on("submit", function() {

		var problemTitle = $("#problemTitle").val();
		var content = $("#content").val();
		var answer = $("input[name=answer]").is(":checked");
		var choiceContent = $("input[name=choiceContent]").val();

		/* 문제제목 체크 */
		if (!problemTitle) {
			alert("문제 제목을 입력해 주세요.");
			return false;
		}

		/* 문제지문 체크 */
		if (!content) {
			alert("문제 지문을 입력해 주세요.");
			return false;
		}

		/* 정답 체크 */
		if (!answer) {
			alert("정답을 체크해 주세요.");
			return false;
		}

		if (!choiceContent) {
			alert("보기 내용을 입력해 주세요.");
			return false;
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
