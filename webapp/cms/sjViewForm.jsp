<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/multiplechoiceForm.css">
<link rel="stylesheet" href="/learnwhale/assets/css/solveForm.css">
<link rel="stylesheet" href="/learnwhale/assets/css/viewForm.css">

<%-- <c:import url="/ktu/head.jsp"></c:import> --%>

<title>Insert title here</title>

</head>
<body>
	<div id="Creat-Title">
		<div>
			<h1>남은시간</h1>
			<span id="pageCount">1/10</span> 
			<span id="point">5점</span>
		</div>
		<div>
			<img id="timeImage" src="/learnwhale/assets/image/time.png">
		</div>
		<div id="time">
			<span>29분</span	>
		</div>
	</div>
	<!-- //Creat-Title -->

	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">



				<div class="row">
					<div class="col-sm-12" id="make-problem">
						<div class="form-group" id="question">
							<span>사진 속 인물의 이름은 무엇인지 쓰시오.</span>
						</div>
						<div class="form-group">
							<img id="testImage" src="/learnwhale/assets/image/test.jpg">
							<div id="description-box">정답 설명란 입니다.</div>
						</div>
						<div class="col-sm-12">
							<textarea id="textarea">내가 적은 정답</textarea>
						</div>
						<div class="col-sm-12">
							<span id="view-image">이미지</span>
						</div>
					</div>
					<!-- //col-sm-12 -->
				</div>
				<!-- //row -->
				
				<!-- 하단 버튼 -->
				<div class="col-sm-6">
					<a id="solveOut" href="">나가기</a>
				</div>
				<!-- <div class="col-sm-6">
					<a id="previousProblem" href=""><이전문제</a>
				</div> -->
				<div class="col-sm-6">
					<a id="nextQuestion" href=""	>다음문제></a>
				</div>
				<!-- <div class="col-sm-6">
					<a id="Completion" href="">완료</a>
				</div> -->
				

			</div>
		</div>
	</div>
	<!-- //container -->
</body>
</html>