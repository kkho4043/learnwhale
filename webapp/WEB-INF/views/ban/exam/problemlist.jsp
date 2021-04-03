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
							<li class="breadcrumb-item">시험관리</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 관리</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
						<c:if test="${classInfo.joinVo.type == '선생님'}">
							<div class="col-xs-2" style="min-height: 250px; margin: 0px 5px 30px -10px;">
								<input type="button" class="btn btn-primary" id="classscroing" value="반 제첨 완료 하기" style="margin: 0px 0px 5px -10px;">
								<div id="student-list" class="row" style="padding-right: 0px; padding-left: 0px; margin-left: -15px; width: 145px; background: #f7f7f7;">
									<ol>
										<c:forEach items="${upMap.eulist}" var="vo" varStatus="status">
											<li><a href="${pageContext.request.contextPath}/${url}/exam/problemlist?examNo=${param.examNo}&joinNo=${vo.joinNo}">${vo.username}
													(${vo.result})</a></li>
										</c:forEach>
									</ol>
								</div>
							</div>
						</c:if>


						<!-- //student-list -->

						<div id="report-area" class="col-xs-10" style="min-height: 250px;">
							<div class="row">
								<div class="col-xs-12">
									<c:if test="${param.joinNo != 1 }">
										<div class="row">

											<div class="col-xs-12">

												<div class="row">
													<div class="col-xs-10"></div>
													<div class="col-xs-2">
														<c:if test="${classInfo.joinVo.type == '선생님'}">
															<input type="button" class="btn btn-primary" value="학생 체점 완료하기" id="studentscoring" style="margin: 0px 0px 3px -70px;">
														</c:if>
													</div>

												</div>
												<table class="table table-striped table-bordered table-hover">
													<colgroup>
														<col style="width: 10%;">
														<col>
														<col style="width: 13%;">
														<col style="width: 13%;">
													</colgroup>
													<thead class="">
														<tr>
															<th>번호</th>
															<th>문제명</th>
															<th>점수</th>
															<th>오답여부</th>
															<th>형식</th>

														</tr>
													</thead>
													<tbody>
														<c:forEach items="${upMap.eplist}" var="vo" varStatus="status">
															<tr>
																<td>${vo.orderNum}</td>
																<td class="text-left"><a
																	href="${pageContext.request.contextPath}/${url}/exam/problemscoring?examNo=${param.examNo}&orderNum=${vo.orderNum}&joinNo=${param.joinNo}">${vo.problemTitle}
																		(${vo.whether})</a></td>
																<td>${vo.mypoint}</td>
																<td>${vo.result}</td>
																<td>${vo.type}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>

										</div>


										<div class="row">
											<div class="col-xs-12 text-center">
												<nav>
													<ul class="pagination">

														<c:if test="${upMap.prev == true}">
															<li><a
																href="${pageContext.request.contextPath}/${url}/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${upMap.startPageBtnNo-1}">◀</a></li>
														</c:if>

														<c:forEach begin="${upMap.startPageBtnNo}" end="${upMap.endPageBtnNo}" step="1" var="page">
															<li><a
																href="${pageContext.request.contextPath}/${url}/exam/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${page}">${page}</a></li>
														</c:forEach>

														<c:if test="${upMap.next == true}">
															<li><a
																href="${pageContext.request.contextPath}/${url}/exam/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${upMap.endPageBtnNo+1}">▶</a></li>
														</c:if>
													</ul>
												</nav>
											</div>
										</div>
									</c:if>




								</div>

							</div>

						</div>

						<!-- //report-area -->



					</div>

					<div class="row col-xs-12">
						<a href="${pageContext.request.contextPath}/${url}/"><input type="button" value="리스트" class="btn btn-primary"></a>
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
	$("#studentscoring").on("click",function() {
		$.ajax({
				url : "${pageContext.request.contextPath}/${url}/exam/allscoring",
				type : "post",
				//contentType : "application/json",
				data : {
					examNo : ${param.examNo},
					joinNo : ${param.joinNo}
				},
				success : function(url) {
					console.log(url);
					alert('학생의 채점을 완료했습니다');
					location.reload();
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			
			});

	});
	
	$("#classscroing").on("click", function() {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/${url}/exam/allscoring",
			type : "post",
			//contentType : "application/json",
			data : {
				examNo : ${param.examNo}
			},
			success : function(url) {
				console.log(url)
				alert('반의 채점을 완료했습니다');
				location.reload();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

		});
	});
</script>
</html>






