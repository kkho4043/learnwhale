<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
						<div class="row">

							<div class="searchF form-group form-inline">
								<form action="${pageContext.request.contextPath}/abc/exam/list" method="get">
									<input type="text" class="form-control input-sm" id="txtSearchKyword" name = "keyward" placeholder="">
									<button type="submit" class="btn btn-default btn-sm" >검색</button>
								</form>
							</div>

							<div class="addtest ">

								<button class="btn btn-primary btn-sm">시험출제</button>
							</div>
						</div>
						<div class="row">
							<table class="table table-striped table-bordered table-hover">
								<thead class="">
									<tr>
										<th>번호</th>
										<th>시험제목</th>
										<th>문항수</th>
										<th>시작일</th>
										<th>종료일</th>
										<th>상태</th>
										<th>참석자</th>
										<th>형태</th>
										<th>수정</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${eMap.elist}" var="vo" varStatus="status">
										<jsp:useBean id="now" class="java.util.Date" />
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="nowDate" />


										<tr>
											<td>${vo.examNo}</td>
											<td><a href="">${vo.examTitle}</a></td>
											<td>${vo.problemAmount}</td>
											<td>${vo.startDate}</td>
											<td>${vo.endDate}</td>
											<td><c:choose>
													<c:when test="${nowDate > vo.startDate && nowDate > vo.endDate}">
														완료
													</c:when>

													<c:when test="${nowDate > vo.startDate && nowDate < vo.endDate}">
														진행중
													</c:when>

													<c:otherwise>
														준비중
													</c:otherwise>

												</c:choose></td>
											<td>${vo.numSubmit}/${vo.attendNum}</td>
											<td>${vo.examType}</td>
											<td><button class="btn btn-default btn-xs">수정</button></td>
										</tr>
									</c:forEach>

								</tbody>

							</table>
						</div>

						<div class="row">
							<div class="col-xs-12 text-center">
								<nav>
									<ul class="pagination">
										<c:if test="${eMap.prev == true}">
											<li><a href="${pageContext.request.contextPath}/abc/list?crtPage=${pMap.startPageBtnNo-1}&keyward=${param.keyward}">◀</a></li>
										</c:if>


										<c:forEach begin="${eMap.startPageBtnNo}" end="${eMap.endPageBtnNo}" step="1" var="page">
											<li><a href="${pageContext.request.contextPath}/abc/exam/list?crtPage=${page}&keyward=${param.keyward}">${page}</a></li>
										</c:forEach>




										<c:if test="${eMap.next == true}">
											<li><a href="${pageContext.request.contextPath}/abc/exam/list?crtPage=${pMap.endPageBtnNo+1}&keyward=${param.keyward}">▶</a></li>
										</c:if>
									</ul>
								</nav>
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
</html>




