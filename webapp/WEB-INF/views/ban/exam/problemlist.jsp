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
							<div id="student-list" class="col-xs-2" style="padding-right: 0px; padding-left: 0px; margin-left: -15px; width: 145px; height: 352px;">
								<ol>
									<c:forEach items="${upMap.eulist}" var="vo" varStatus="status">

										<li><a href="${pageContext.request.contextPath}/${url}/exam/problemlist?examNo=${param.examNo}&joinNo=${vo.joinNo}">${vo.username}(${vo.result})</a></li>

									</c:forEach>
								</ol>
							</div>
						</c:if>

						<!-- //student-list -->

						<div id="report-area" class="col-xs-10">
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-12">
											<table class="table table-striped table-bordered table-hover">
												<colgroup>
													<col style="width: 10%;">
													<col>
													<col style="width: 15%;">
													<col style="width: 15%;">
												</colgroup>
												<thead class="">
													<tr>
														<th>번호</th>
														<th>문제명</th>
														<th>오답여부</th>
														<th>형식</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach items="${upMap.eplist}" var="vo" varStatus="status">
														<tr>
															<td>${vo.orderNum}</td>
															<td class="text-left"><a href="${pageContext.request.contextPath}/${url}/exam/problemscoring?examNo=${param.examNo}&orderNum=${vo.orderNum}&joinNo=${param.joinNo}">${vo.problemTitle}</a></td>
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
															href="${pageContext.request.contextPath}/abc/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${upMap.startPageBtnNo-1}">◀</a></li>
													</c:if>

													<c:forEach begin="${upMap.startPageBtnNo}" end="${upMap.endPageBtnNo}" step="1" var="page">
														<li><a href="${pageContext.request.contextPath}/abc/exam/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${page}">${page}</a></li>
													</c:forEach>

													<c:if test="${upMap.next == true}">
														<li><a
															href="${pageContext.request.contextPath}/abc/exam/problemlist?examNo=${param.examNo}&joinNo=${param.joinNo}&crtPage=${upMap.endPageBtnNo+1}">▶</a></li>
													</c:if>
												</ul>
											</nav>
										</div>
									</div>


								</div>
							</div>
						</div>
						<!-- //report-area -->



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
</html>




