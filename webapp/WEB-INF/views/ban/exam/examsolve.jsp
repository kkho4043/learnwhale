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
							<div class="col-xs-10">
								<div class="row protitle">
									<div class="col-xs-1">${param.orderNum}번</div>
									<div class="col-xs-8">${examInfo.problemVo.content}</div>
									<div class="col-xs-1">(${examInfo.qeustionVo.point}점)</div>
									<c:if test="${examInfo.examVo.time != null}">
										<div class="col-xs-2">남은 시간 ${examInfo.examVo.time} 초</div>
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
											<textarea></textarea>
											<input type="file">
										</div>
									</c:if>

									<c:if test="${examInfo.problemVo.type == 'OX'}">
										<div class="OX">
											<div id="O">O</div>
											<div id="X">X</div>
										</div>
									</c:if>
									<c:if test="${examInfo.problemVo.type == '객관식'}">
										<div class="multiple">
				
										<c:forEach items="${examInfo.cList}" var="vo" varStatus="status">
											<div class="row">
												<input type="button" value="${vo.orderNo}" class="btn btn-info"><span>${vo.choiceContent}</span>
											</div>
											
										</c:forEach>
										</div>
										
									</c:if>
								</div>

								<div class="row">
									<div class="col-xs-2">
										<input type="button" value="이전문제" class="btn btn-primary">
									</div>
									<div class="col-xs-8"></div>
									<div class="col-xs-2">
										<input type="button" value="다음문제" class="btn btn-primary">
									</div>
								</div>


							</div>

							<div class="col-xs-2">
								<div class="row">
									<div class="prolist">
										<ul>
											<li>1번</li>
											<li>2번</li>
											<li>3번</li>
											<li>4번</li>
											<li>5번</li>
											<li>6번</li>
											<li>7번</li>
											<li>8번</li>
											<li>9번</li>
											<li>10번</li>
										</ul>

									</div>


									<div class="row prolistbtn">
										<input type="button" value="이전" class="btn btn-primary btn-sm"> <input type="button" value="다음" class="btn btn-primary btn-sm">
									</div>
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
	
</script>
</html>




