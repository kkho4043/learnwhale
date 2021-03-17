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
									<div class="col-xs-1">2번</div>
									<div class="col-xs-8">다음인물은 가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가</div>
									<div class="col-xs-1">(5점)</div>
									<div class="col-xs-1"></div>
									<div class="col-xs-1">30초 타이머</div>
								</div>
								<div class="row">
									<div class="testimg">
										<img src="#">

										<!--  <input type="button" value="첨부파일">  -->
									</div>
								</div>

								<div class="row protype">

									<!-- <div class="shortanswer">
										<textarea></textarea>
										<input type="file">
									</div> -->

									<!-- <div class="OX"> 
						<div id ="O">O</div>
						<div id ="X">X</div>
					</div>  OX   -->

									<div class="multiple">
										<div class="row">
											<input type="button" value="1" class="btn btn-primary"><span>유관순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순</span>
										</div>
										<div class="row">
											<input type="button" value="2" class="btn btn-primary"><span>이순신</span>
										</div>
										<div class="row">
											<input type="button" value="3" class="btn btn-primary"><span>강호동</span>
										</div>
										<div class="row">
											<input type="button" value="4" class="btn btn-primary"><span>세종대왕</span>
										</div>
									</div>
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




