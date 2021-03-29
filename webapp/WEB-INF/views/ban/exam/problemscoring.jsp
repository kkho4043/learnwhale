<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/assets/css/ban/exam.css" rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- top-banner -->

	<!-- //top-banner -->


	<!-- content, container 영역-->
	<div class="container">
		<div class="row">

			<div id="content">

				<!-- 왼쪽 영역-->
				<c:import url="/WEB-INF/views/ban/include/aside.jsp"></c:import>
				<!-- //왼쪽 영역-->

				<!-- 오른쪽 영역 -->
				<div id="main-area" class="col-xs-10">
					<!-- 위치 -->
					<div id="breadcrumb-area">
						<ol class="breadcrumb pull-right">
							<li class="breadcrumb-item">반</li>
							<li class="breadcrumb-item">시험출제</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 출제</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">

						<div class="row">
							<div class="col-xs-9">
								<div class="row protitle">
									<div class="col-xs-1">${examInfo.qeustionVo.orderNum}번</div>
									<div class="col-xs-7">${examInfo.problemVo.content}</div>
								</div>
								<c:if test="${examInfo.problemVo.contentImage != null}">
									<div class="row">
										<div class="testimg">
											<img src="${examInfo.problemVo.contentImage}">

											<!--  <input type="button" value="첨부파일">  -->
										</div>
									</div>
								</c:if>
								<div class="row">정답 : ${examInfo.problemVo.answer}</div>
								<div class="row">
									입력한답 : <span id="ineranswer"></span>
								</div>
								<div class="row protype">

									<c:if test="${examInfo.problemVo.type == '주관식'}">
										<div class="shortanswer">
											<textarea id="shortans" onchange="getsanswer()"></textarea>
											<form id="uploadForm">
												<!-- <input type="file" name="file" onchange="uploadFile()" /> -->
											</form>
										</div>
									</c:if>
									<c:if test="${examInfo.problemVo.type == 'OX문제'}">
										<div class="OX">

											<div>
												<button id="O" class="btn btn-info">O</button>
											</div>
											<div>
												<button id="X" class="btn btn-danger">X</button>
											</div>

										</div>
									</c:if>
									<c:if test="${examInfo.problemVo.type == '객관식'}">
										<div class="multiple">

											<c:forEach items="${examInfo.cList}" var="vo" varStatus="status">
												<div class="row">
													<input type="button" id="choice${vo.orderNo}" value="${vo.orderNo}" class="btn btn-info choicebtn"><span>${vo.choiceContent}</span>
												</div>

											</c:forEach>
										</div>

									</c:if>


								</div>

								<div class="givescore row">
									<div class="col-xs-5"></div>
									<div class="col-xs-5">
										<span>점수</span> <input type="text" id="mypoint" <c:if test="${classInfo.joinVo.type != '선생님'}"> readonly </c:if>><span>/${examInfo.qeustionVo.point}</span>
									</div>
								</div>

								<div class="row">
									<div class="col-xs-5"></div>
									<div class="col-xs-2">
										<c:if test="${classInfo.joinVo.type == '선생님'}">
											<input type="button" value="점수 부여 확인" class="btn btn-primary" id="pointgrant">
										</c:if>
									</div>

									<div class="col-xs-3"></div>
									<div class="col-xs-2">
										<input type="button" value="리스트" class="btn btn-primary">
									</div>
								</div>


							</div>

							<div class="col-xs-3">
								<div class="row">
									<div class="prolist">
										<table class="table">
											<tr>
												<th>번호</th>
												<th>오답여부</th>
												<th>상태</th>
											</tr>

											<tr>
												<td>1</td>
												<td>O</td>
												<td>OX</td>
											</tr>

											<tr>
												<td>2</td>
												<td>△</td>
												<td>주관식</td>
											</tr>

											<tr>
												<td>3</td>
												<td>X</td>
												<td>객관식</td>
											</tr>
											<tr>
												<td>4</td>
												<td>X</td>
												<td>객관식</td>
											</tr>
											<tr>
												<td>5</td>
												<td>X</td>
												<td>객관식</td>
											</tr>
											<tr>
												<td>6</td>
												<td>X</td>
												<td>객관식</td>
											</tr>
											<tr>
												<td>7</td>
												<td>X</td>
												<td>객관식</td>
											</tr>
											<tr>
												<td>8</td>
												<td>X</td>
												<td>객관식</td>
											</tr>

											<tr>
												<td>9</td>
												<td>X</td>
												<td>객관식</td>
											</tr>

											<tr>
												<td>10</td>
												<td>X</td>
												<td>객관식</td>
											</tr>

										</table>

									</div>

								</div>
								<div class="row prolistbtn">
									<input type="button" value="이전" class="btn btn-primary"> <input type="button" value="다음" class="btn btn-primary">
								</div>
							</div>
						</div>



					</div>
					<!-- //main-content-area -->
					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->




				</div>
				<!-- //오른쪽 영역 -->

			</div>
			<!-- //content -->

		</div>
		<!-- //content row-->

	</div>
	<!-- //content, container 영역-->

	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/ban/include/footer.jsp"></c:import>
	<!-- //footer-Area container 영역-->




</body>

<script type="text/javascript">
	var joinNo = "${param.joinNo}";
	var examNo = "${examInfo.examVo.examNo}";
	var orderNum = "${examInfo.qeustionVo.orderNum}";

	$.ajax({
		url : '${pageContext.request.contextPath}/${url}/exam/selectanswer',
		type : 'POST',
		data : {
			examNo : examNo,
			orderNum : orderNum,
			joinNo : joinNo
		},
		success : function(answer) {
			console.log(answer)
			document.getElementById("ineranswer").innerHTML = answer;
			if ("${examInfo.problemVo.type}" == 'OX') {
				if (answer == 'O') {
					$('#O').removeClass('btn-info');
					$('#O').addClass('btn-primary');
					$('#O').addClass('active');

					$('#X').removeClass('active');
					$('#X').removeClass('btn-warning', 'active');
					$('#X').addClass('btn-danger');
				} else {
					$('#X').removeClass('btn-danger');
					$('#X').addClass('btn-warning');
					$('#X').addClass('active');

					$('#O').removeClass('active');
					$('#O').removeClass('btn-primary');
					$('#O').addClass('btn-info');
				}

			} else if ("${examInfo.problemVo.type}" == '객관식') {
				var ar = answer.split(",");

				for (var i = 0; i < ar.length; i++) {
					$("#choice" + ar[i]).removeClass('btn-info');
					$("#choice" + ar[i]).addClass('btn-primary');
					$("#choice" + ar[i]).addClass('active');

				}

			} else {

				document.getElementById("shortans").value = answer;
			}

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

	$.ajax({
		url : "${pageContext.request.contextPath}/${url}/exam/getpoint",
		type : "post",
		//contentType : "application/json",
		data : {
			examNo : examNo,
			orderNum : orderNum,
			joinNo : joinNo
		},
		success : function(point) {
			console.log("점수:" + point)
			document.getElementById("mypoint").value = point;

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}

	});

	$("#pointgrant").on("click", function() {
		var point = document.getElementById('mypoint').value;
		if (point > "${examInfo.qeustionVo.point}") {
			alert('부여될점수가 너무 큽니다.');
			return false;
		}
		var joinNo = "${param.joinNo}";
		var examNo = "${examInfo.examVo.examNo}";
		var orderNum = "${examInfo.qeustionVo.orderNum}";

		$.ajax({
			url : "${pageContext.request.contextPath}/${url}/exam/grantpoint",
			type : "post",
			//contentType : "application/json",
			data : {
				point : point,
				examNo : examNo,
				orderNum : orderNum,
				joinNo : joinNo
			},
			success : function(url) {
				console.log(url);
				alert('점수가 부여되었습니다');

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

		});

	});
</script>
</html>




