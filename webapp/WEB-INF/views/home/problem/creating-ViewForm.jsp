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

										<form id="prblemForm" action="${pageContext.request.contextPath}/myclass/problem/modify" method="post" enctype="multipart/form-data">
											<div class="col-xs-9">
												<input type="hidden" name="problemNo" value="${proVo.problemNo}">
												<div class="row col-xs-9" id="need-hide">
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
																<label for="typeMc">문제형식: 객관식</label>
															</div>
														</c:when>
														<c:when test="${proVo.type == 'OX문제'}">
															<div class="col-sm-12 problemType radioArea">
																<label for="typeOx">문제형식: OX문제</label>
															</div>
														</c:when>
														<c:otherwise>
															<div class="col-sm-12 problemType radioArea">
																<label for="typeSj">문제형식: 주관식</label>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
												<!-- //row -->
												<input type="hidden" name="cateNo" value="${proVo.cateNo}">


												<div class="row">
													<div class="col-xs-9" id="make-problem">

														<div class="form-group">
															<label for="problemTitle" id="title-label" style="float: left;">제목: </label> <input type="text" class="form-control"
																id="view-problemTitle" placeholder="문제 제목을 입력해주세요." name="problemTitle" value="${proVo.problemTitle}">
														</div>
														<div class="form-group">
															<label for="content" id="label-problem" style="float: left;">문제:</label>
															<textarea class="form-control" id="view-content" placeholder="문제를 입력해주세요." name="content">${proVo.content}</textarea>
														</div>

														<div class="form-group" id="img-file">
															<label for="image" id="view-image-label">이미지 : ${proVo.contentImage}</label> <input type="file" name="Imag" id="image" value="">
														</div>
														<div class="form-group" id="last-makeType">
															<label for="description" id="label-description" style="float: left;">설명:</label>
															<textarea id="description" class="form-control" placeholder="정답에 대한 설명을 넣어주세요." name="description">${proVo.description}</textarea>
														</div>


														<div class="mc-Area">
															<c:choose>
																<c:when test="${proVo.type == '객관식'}">
																	<div id="choType-div">
																		<div class="col-xs-12" id="choice-type">
																			<span>보기 등록 방식을 선택해 주세요.</span>
																		</div>
																		<div class="col-xs-6">
																			<button type="button" class="btn btn-success" id="choice-TextType">내용 입력</button>
																		</div>
																		<div class="col-xs-6">
																			<button type="button" class="btn btn-info" id="choice-ImageType">이미지 등록</button>
																		</div>
																	</div>



																	<div class="row answer-content real-MaArea">


																		<div id="choice-area" <c:if test="${choVo[0].choiceContent == null}">style="display: none;"</c:if>>
																		
																			<div class="col-xs-12">
																				<h4 id="text-area">각 문항에 내용을 입력해주세요.</h4>
																			</div>

																			<c:forEach items="${choVo}" var="choVo" varStatus="status">
																				<div class="clo-xs-12 row choice-textMargin">
																					<div class="col-xs-1 answer-num">
																						<strong>${status.count}</strong>
																					</div>
																					<div class="col-xs-9">
																						<input type="text" class="form-control" placeholder="The first answer" id="choiceContent${status.count}" name="choiceContent" value="${choVo.choiceContent}"> 
																						<input type="hidden" name="choiceNo" value="${choVo.choiceNo}">
																					</div>
																					<div class="col-xs-2">
																						<input type="checkBox" class="answer" name="answer" id="check${choVo.orderNo}" value="${status.count}"> <label
																							for="check${choVo.orderNo}">정답체크</label>
																					</div>
																				</div>
																			</c:forEach>
																		</div>
																	

																		<div class="row answer-content" id="image-area"
																			<c:if test="${choVo[0].choiceContent != null}">style=" display: none;"</c:if>>
																			<div class="col-xs-12 image-h4">
																				<h4>각 문항에 이미지를 넣어주세요.</h4>
																			</div>
																			<c:forEach items="${choVo}" var="choVo" varStatus="status">
																				<div class="col-xs-12 answer-num image-answer-num">
																					<strong class="image-num">${status.count}</strong> 
																					<input type="file" name="Image" id="file${status.count}" class="image-file">
																					<input type="checkBox" class="answer image-checkbox" name="answer" id="imgCheck${status.count}" value="${status.count}">
																					<label for="imgCheck${status.count}" class="check-label">정답체크</label>
																					<input type="hidden" name="choiceNo" value="${choVo.choiceNo}">
																				</div>
																				<div class="col-xs-12">
																					<span id="image-span">이미지: ${choVo.attachmentFile}</span>
																				</div>
																			</c:forEach>
																		</div>

																	</div>
																</c:when>
																<c:when test="${proVo.type == 'OX문제'}">
																	<div class="row ox-Area">
																		<div class="col-xs-12">
																			<h4>정답을 선택해주세요</h4>
																		</div>
																		<c:choose>
																			<c:when test="${proVo.answer == 'O' }">
																				<div class="col-xs-6">


																					<div>
																						<input id="checkO" class="answer" type="radio" name="answer" value="O" checked="checked">
																					</div>
																					<div id="O">
																						<label for="checkO">O</label>
																					</div>
																				</div>
																				<div class="col-xs-6">
																					<div>
																						<input id="checkX" class="answer" type="radio" name="answer" value="X">
																					</div>
																					<div id="X">
																						<label for="checkX">X</label>
																					</div>
																				</div>
																			</c:when>

																			<c:when test="${proVo.answer == 'X'}">
																				<div class="col-xs-6">
																					<div>
																						<input id="checkO" class="answer" type="radio" name="answer" value="O">
																					</div>
																					<div id="O">
																						<label for="checkO">O</label>
																					</div>
																				</div>

																				<div class="col-xs-6">
																					<div>
																						<input id="checkX" class="answer" type="radio" name="answer" value="X" checked="checked">
																					</div>
																					<div id="X">
																						<label for="checkX">X</label>
																					</div>
																				</div>
																			</c:when>
																		</c:choose>
																	</div>
																</c:when>
																<c:when test="${proVo.type == '주관식'}">
																	<div class="row answer-content sj-Area">
																		<div class="col-sm-12">
																			<h4>정답을 적어주세요.</h4>
																		</div>
																		<div class="col-sm-12" id="last-input">
																			<input type="text" class="form-control answer" id="answer" name="answer" value="${proVo.answer}">
																		</div>
																	</div>
																</c:when>
															</c:choose>

														</div>
													</div>
													<!-- //col-sm-12 -->
												</div>
												<!-- //row -->
											</div>

											<div class="col-xs-4">
												<a href="${pageContext.request.contextPath}/myclass/problem/problemList?cateNo=${param.cateNo}">
													<button type="button" id="out" class="btn btn-danger">나가기</button>
												</a>
											</div>
											<div class="col-xs-5">
												<button type="submit" class="btn btn-primary" id="save">수정하기</button>
											</div>
											<input type="hidden" id="chioceType"> <input type="hidden" id="problemType">
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



	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/home/include/footer.jsp"></c:import>
	<!-- //footer-Area -->

</body>
<script type="text/javascript">
	
	if ("${proVo.type}" == "객관식") {
		var answer = "${proVo.answer}";
		var ar = answer.split(",");
		
		document.getElementById("problemType").value = "prochoice";
		
		if("${choVo[0].choiceContent}" === null){
			document.getElementById("chioceType").value = "typetext";
			
			for (var i = 0; i < ar.length; i++) {
				document.getElementById("check"+ar[i]).checked = true;
				
			}
			
		}else {
			document.getElementById("chioceType").value = "typeimage";
			for (var i = 0; i < ar.length; i++) {
				document.getElementById("imgCheck"+ar[i]).checked = true;
			
			}
			
		}
		
		
	} else if ("${proVo.type}" == "OX문제") {
		document.getElementById("problemType").value = "proOX";

	} else if ("${proVo.type}" == "주관식") {
		document.getElementById("problemType").value = "proshort";
	}
	//보기 타입 텍스트 선택할 때
	$("#choice-TextType").on("click", function() {
		document.getElementById("chioceType").value = "typetext";

		$("#image-area").hide();
		$("#choice-area").show();

		imgInputReset();

	});

	//보기 타입 이미지 선택할 때
	$("#choice-ImageType").on("click", function() {

		document.getElementById("chioceType").value = "typeimage";
		$("#choice-area").hide();
		$("#image-area").show();

		textInputReset();

	});

	$(document).ready(function() {

		if ("${proVo.type}" != '주관식') {
			var answer = "${proVo.answer}";
			var ar = answer.split(",");
			var num;
			console.log(ar);
			for (var i = 0; i < ar.length; i++) {
				num = ar[i];
				document.getElementById("check" + num).checked = true;
			}
		}

	});

	/* 빈칸 여부 체크하기 */
	$("#prblemForm").on("submit",function() {
						
						var problemTitle = $("#view-problemTitle").val();
						var content = $("#view-content").val();
						var answer = $("input[name=answer]");

						/* 문제 제목 체크 */
						if (!problemTitle) {
							alert("문제 제목을 입력해 주세요.");
							return false;
						}

						if (!content) {
							alert("문제 지문을 입력해 주세요.");
							return false;
						}
						if (document.getElementById("problemType").value == "prochoice") {
							if (document.getElementById("chioceType").value == "typetext") {

								if (!$("#choiceContent1").val()) {
									console.log("보기 1번 비었음")
									alert("보기 1번 입력해주세요");
									return false;
								} else if (!$("#choiceContent2").val()) {
									alert("보기 2번 입력해주세요");
									return false;
								} else if (!$("#choiceContent3").val()) {
									alert("보기 3번 입력해주세요");
									return false;
								} else if (!$("#choiceContent4").val()) {
									alert("보기 4번 입력해주세요");
									return false;
								} else if ($(".mc-Area .answer").is(":checked") == false) {
									console.log("객관식");
									alert("정답을 체크해주세요");
									return false;
								}
							} else if (document.getElementById("chioceType").value == "typeimage") {

								if (!(document.getElementById("file1").value)) {
									alert("이미지 1번을 넣어주세요.");
									return false;
								} else if (!(document.getElementById("file2").value)) {
									alert("이미지 2번을 넣어주세요.");
									return false;
								} else if (!(document.getElementById("file3").value)) {
									alert("이미지 3번을 넣어주세요.");
									return false;
								} else if (!(document.getElementById("file4").value)) {
									alert("이미지 4번을 넣어주세요.");
									return false;
								} else if ($("#image-area .answer").is(":checked") == false) {
									alert("정답을 체크해주세요");
									return false;
								}

							} else if (document.getElementById("problemType").value == "proshort") {
								if (!$(".sj-Area .answer").val()) {
									console.log("주관식")
									alert("정답을 입력해주세요");
									return false;
								}

							} else if (document.getElementById("problemType").value == "proshort") {
								if ($('input:radio[name=answer]')
										.is(':checked') == false) {
									console.log("ox");
									alert("정답을 체크해주세요");
									return false;
								}
							}
						}
					});

	function textInputReset() {
		document.getElementById("choiceContent1").value = "";
		document.getElementById("choiceContent2").value = "";
		document.getElementById("choiceContent3").value = "";
		document.getElementById("choiceContent4").value = "";
		$('input[name="answer"]').removeAttr('checked');
	}

	function imgInputReset() {
		document.getElementById("file1").value = "";
		document.getElementById("file2").value = "";
		document.getElementById("file3").value = "";
		document.getElementById("file4").value = "";
		$('input[name="answer"]').removeAttr('checked');

	}
</script>
</html>
