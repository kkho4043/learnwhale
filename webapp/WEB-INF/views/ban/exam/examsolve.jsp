<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
							<div class="col-xs-10">
								<div class="row protitle">
									<div class="col-xs-1">${examInfo.qeustionVo.orderNum}번</div>
									<div class="col-xs-7">${examInfo.problemVo.content}</div>
									<div class="col-xs-1">(${examInfo.qeustionVo.point}점)</div>
									<c:if test="${examInfo.examVo.time != null}">
										<div class="col-xs-2" id="demo"></div>
									</c:if>
								</div>

								<c:if test="${examInfo.problemVo.contentImage != null}">
									<div class="row">
										<div class="testimg">
											<img src="${examInfo.problemVo.contentImage}">

											<!--  <input type="button" value="첨부파일">  -->
										</div>
									</div>
								</c:if>
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

								<div class="row">
									<div class="col-xs-2">
										<c:if test="${examInfo.examVo.examType != '쪽지시험'}">
											<c:choose>

												<c:when test="${param.orderNum-1 == 0}">
													<a href="${pageContext.request.contextPath}/${url}/"><input type="button" value="리스트 로" class="btn btn-info"></a>
												</c:when>
												<c:otherwise>
													<a href="${pageContext.request.contextPath}/${url}/exam/examsolve?examNo=${examInfo.examVo.examNo}&orderNum=${param.orderNum-1}"><input type="button" value="이전문제" class="btn btn-primary"></a>
												</c:otherwise>
											</c:choose>
										</c:if>
									</div>

									<div class="col-xs-8"></div>

									<div class="col-xs-2">
										<c:choose>
											<c:when test="${examInfo.endsolve == 'endsolve'}">
												<a href="${pageContext.request.contextPath}/${url}/exam/examend?examNo=${examInfo.examVo.examNo}&orderNum=${param.orderNum}"><input type="button" value="시험 종료" class="btn btn-info"></a>
											</c:when>
											<c:otherwise>
												<a href="${pageContext.request.contextPath}/${url}/exam/examsolve?examNo=${examInfo.examVo.examNo}&orderNum=${param.orderNum+1}"><input type="button" value="다음문제" class="btn btn-primary"></a>
											</c:otherwise>
										</c:choose>
									</div>


								</div>


							</div>

							<div class="col-xs-2">
								<div class="row">
									<c:if test="${examInfo.examVo.examType != '쪽지시험'}">
										<div class="prolist">
											<ul id="problemList">
											</ul>
											<div class="row prolistbtn">
												<div class="col-xs-6">
													<input type="button" value="이전" class="btn btn-primary" id="prevbtn">
												</div>
												<div class="col-xs-6">
													<input type="button" value="다음" class="btn btn-primary" id="nextbtn"> <input type="hidden" id="Listorder">
												</div>

											</div>
										</div>
									</c:if>

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
	if ("${examInfo.examVo.examType}" == '쪽지시험') {

		var time = "${examInfo.examVo.time}";
		var min = "";
		var sec = "";

		var x = setInterval(function() {

			min = parseInt(time / 60);
			sec = time % 60;
			document.getElementById("demo").innerHTML = "남은시간" + min + "분"
					+ sec + "초";
			time--;
			console.log(time);
			if (time < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "시간 초과";
			}

		}, 1000);
	} else {
		var joinNo = "${classInfo.joinVo.joinNo}";
		var examNo = "${examInfo.examVo.examNo}";
		var orderNum = "${examInfo.qeustionVo.orderNum}";

		$
				.ajax({
					url : '${pageContext.request.contextPath}/${url}/exam/selectanswer',
					type : 'POST',
					data : {
						examNo : examNo,
						orderNum : orderNum,
						joinNo : joinNo,
					},
					success : function(answer) {
						console.log(answer)

						if ("${examInfo.problemVo.type}" == 'OX문제') {
							if (answer == 'O') {
								$('#O').removeClass('btn-info');
								$('#O').addClass('btn-primary');
								$('#O').addClass('active');

								$('#X').removeClass('active');
								$('#X').removeClass('btn-warning', 'active');
								$('#X').addClass('btn-danger');
							} else if (answer == 'X') {
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
						getsideList(orderNum);
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});

	}

	$("#prevbtn").on("click", function(orderNum) {
		var oder = document.getElementById("Listorder").value;
		var order = parseInt(oder) - 1;
		getsideList(order);

	});

	$("#nextbtn").on("click", function(orderNum) {
		var oder = document.getElementById("Listorder").value;
		var order = parseInt(oder) + 1;
		getsideList(order);
	});

	function getsideList(orNum) {
		var oNum = orNum;
		var joinNo = "${classInfo.joinVo.joinNo}";
		var examNo = "${examInfo.examVo.examNo}";
		$
				.ajax({
					url : "${pageContext.request.contextPath}/${url}/exam/examsolveList",
					type : "post",
					//contentType : "application/json",
					data : {
						examNo : examNo,
						orderNum : oNum,
						joinNo : joinNo
					},
					success : function(data) {
						console.log(data.next)
						if (data.prev) {
							$("#prevbtn").show();
						} else {
							$("#prevbtn").hide();
						}

						if (data.next) {
							$("#nextbtn").show();
						} else {
							$("#nextbtn").hide();
						}

						renders(data.qList);
						console.log("잘되나");
						document.getElementById("Listorder").value = data.thisoderNum;
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
	}

	function renders(qList) {
		$("#problemList").empty();
		for (var i = 0; i < qList.length; i++) {
			serender(qList[i]);
		}
	}

	function serender(Vo) {
		var str = "";
		str += '<li>';
		if ("${param.orderNum}" == Vo.orderNum) {
			str += +Vo.orderNum + '번';
		} else {
			str += '<a href="${pageContext.request.contextPath}/${url}/exam/examsolve?examNo=${examInfo.examVo.examNo}&orderNum='
					+ Vo.orderNum
					+ '&joinNo=${param.joinNo}">'
					+ Vo.orderNum
					+ '번</a>';
			str += '</li>';
		}

		$("#problemList").append(str);
	}

	$("#O").on("click", function() {
		$('#O').removeClass('btn-info');
		$('#O').addClass('btn-primary');
		$('#O').addClass('active');

		$('#X').removeClass('active');
		$('#X').removeClass('btn-warning', 'active');
		$('#X').addClass('btn-danger');
		insertanswer('O');
	});

	$("#X").on("click", function() {

		$('#X').removeClass('btn-danger');
		$('#X').addClass('btn-warning');
		$('#X').addClass('active');

		$('#O').removeClass('active');
		$('#O').removeClass('btn-primary');
		$('#O').addClass('btn-info');

		insertanswer('X');
	});

	$(".choicebtn").on("click", function() {

		var clN = $(this).attr("class");

		if (clN.indexOf("btn-info") != -1) {
			$(this).removeClass('btn-info');
			$(this).addClass('btn-primary');
			$(this).addClass('active');
		} else {
			$(this).removeClass('btn-primary');
			$(this).removeClass('active');
			$(this).addClass('btn-info');
		}

		var answer = "";
		const list = document.getElementsByClassName('active');
		const list_length = list.length;
		for (let i = 0; i < list_length; i++) {
			answer = answer + list[i].value;
			if (i + 1 < list.length) {
				answer = answer + ",";
			}
		}
		insertanswer(answer);
	});

	function getsanswer() {
		//var shanswer = ("#shortans").val();
		var x = document.getElementById("shortans").value;

		insertanswer(x);
	}

	$('#uploadBtn').on('click', function() {
		uploadFile();
	});

	/* function uploadFile() {
		

		var joinNo = "${classInfo.joinVo.joinNo}";
		var examNo = "${examInfo.examVo.examNo}";
		var orderNum = "${examInfo.qeustionVo.orderNum}";
		
		var form = $('#uploadForm')[0];
		var formData = new FormData(form);
		console.log("잘되나"+formData);
		$.ajax({
			url : '${pageContext.request.contextPath}/${url}/exam/solvefile',
			type : 'POST',
			contentType : "multipart/form-data"
			processData : false,
			enctype=
			
				data : {
					examNo : examNo,
					orderNum : orderNum,
					joinNo : joinNo,
					formData : formData},
			
			
			
			//dataType : "json",
			success : function() {
				console.log("잘보냈다")

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
				
			
		});
	} */

	function insertanswer(answer) {

		var joinNo = "${classInfo.joinVo.joinNo}";
		var examNo = "${examInfo.examVo.examNo}";
		var orderNum = "${examInfo.qeustionVo.orderNum}";
		var submitAnswer = answer;

		$
				.ajax({
					url : '${pageContext.request.contextPath}/${url}/exam/insertanswer',
					type : 'POST',
					data : {
						examNo : examNo,
						orderNum : orderNum,
						joinNo : joinNo,
						submitAnswer : submitAnswer
					}
				});
	}
</script>
</html>




