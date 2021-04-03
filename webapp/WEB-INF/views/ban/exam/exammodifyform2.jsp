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
<link href="${pageContext.request.contextPath}/assets/css/home/category.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/problem.css" rel="stylesheet" type="text/css">

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
							<li class="breadcrumb-item">시험수정</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 수정</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
						<div class="row testoption">

							<div class="row">
								<div class="col-xs-2" style="margin-top: 3px;">제목</div>
								<div class="col-xs-10">
									<input type="text" id="examtitle" value="${pMap.examVo.examTitle}">
								</div>
							</div>
							<div class="row">
								<div class="col-xs-2">시험 유형</div>

								<div class="col-xs-2">${pMap.examVo.examType}</div>

							</div>

							<div class="row" class="simpletesttime" id="testtime">
								<div class="col-xs-2" style="margin-top: 3px;">시간설정</div>
								<div class="col-xs-4">
									<select name="testtime" id="timeselect" class="selecttimebar">
										<option value="">문제당 시간</option>
										<option value="30" <c:if test="${pMap.examVo.time == '30'}"> selected="selected" </c:if>>30초</option>
										<option value="60" <c:if test="${pMap.examVo.time == '60'}"> selected="selected" </c:if>>1분</option>
										<option value="120" <c:if test="${pMap.examVo.time == '120'}"> selected="selected" </c:if>>2분</option>
										<option value="180" <c:if test="${pMap.examVo.time == '180'}"> selected="selected" </c:if>>3분</option>
										<option value="240" <c:if test="${pMap.examVo.time == '240'}"> selected="selected" </c:if>>4분</option>
										<option value="300" <c:if test="${pMap.examVo.time == '300'}"> selected="selected" </c:if>>5분</option>
									</select>
								</div>
							</div>


							<div class="row">
								<div class="col-xs-2">응시 가능 시간</div>
								<div class="col-xs-5">
									<input type="datetime-local" id="startdate" value="${pMap.examVo.startDate}" readonly> 부터
								</div>

								<div class="col-xs-5">
									<input type="datetime-local" id="enddate" value="${pMap.examVo.endDate}" readonly> 까지
								</div>
							</div>


						</div>


						<div class="row">
							<div class="col-xs-2">선택한 문제</div>
							<div class="col-xs-6"></div>

							<div class="col-xs-3"></div>
						</div>

						<div class="row prolist">
							<table class="table">
								<thead>
									<tr>
										<th>번호</th>
										<th>문제 제목</th>
										<th>형식</th>
										<th>문제당 점수</th>
									</tr>
								</thead>
								<tbody id="selectprolist">

								</tbody>
							</table>
						</div>

						<div class="row">
							<div class="col-xs-5"></div>
							<div class="col-xs-6">
								<button type="button" class="btn btn-xs btn-primary" id="examgrant">시험 수정</button>
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
	$(document)
			.ready(
					function() {
						document.getElementById('examtitle').value = "${pMap.examVo.examTitle}";
						if ("${pMap.examVo.examType}" === "쪽지시험") {
							document.getElementById("testtime").style.display = "block";
							$('#testtype-easy').prop('checked', true);

						} else {
							document.getElementById("testtime").style.display = "none";
							if ("${pMap.examVo.examType}" === "시험") {
								$('#testtype-test').prop('checked', true);
							} else {
								$('#testtype-home').prop('checked', true);
							}
						}

						$
								.ajax({
									url : "${pageContext.request.contextPath}/${url}/exam/selectquestion",
									type : "post",
									//contentType : "application/json",
									data : {
										examNo : "${param.examNo}"
									},
									success : function(List) {
										var str = "";
										for (var i = 0; i < List.length; i++) {
											str += '<tr>';
											str += '	<td>' + List[i].problemNo
													+ '</td>';
											str += '	<td>'
													+ List[i].problemTitle
													+ '</td>';
											str += '	<td>'
													+ List[i].problemType
													+ '</td>';
											str += '	<td>' + List[i].point
													+ '</td>';
											str += '</tr>';

											$("#selectprolist").prepend(str);
										}
									},
									error : function(XHR, status, error) {
										console.error(status + " : " + error);
									}
								});

					});
	//시험 유형
	function gettype(event) {
		type = event.target.value;
		if (type === "쪽지시험") {
			document.getElementById("testtime").style.display = "block";
		} else {
			document.getElementById("testtime").style.display = "none";
		}

	}

	$("#examgrant").on("click", function() {

		var examTitle = document.getElementById('examtitle').value;

		if ("${pMap.examVo.examType}" == '쪽지시험') {
			var time = document.getElementById("timeselect").value
			console.log("time = " + time);
		}
		var examNo = "${param.examNo}"
		console.log("examtitle = " + examTitle);
		if (examTitle == '') {
			alert('제목을 입력해주세요');
			return false;
		} else if ("${pMap.examVo.examType}" == '쪽지시험') {
			if (time == '') {
				alert('시간을 입력해주세요');
				return false;
			}
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/${url}/exam/modify2",
			type : "post",
			//contentType : "application/json",
			data : {
				examTitle : examTitle,
				examNo : examNo,
				time : time
			},
			success : function(url) {
				alert('시험내용이 수정되었습니다');
				console.log(url)
				location.href = "${pageContext.request.contextPath}" + url;

				/* location.href = "http://www.example.com/ThankYou.html" */
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});
</script>
</html>




