<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">


<!-- 자바스크립트 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>


</head>
<body>

	<div class="container border">
		<div class="row">
			<div id="hedaer" class="col-xs-12">
				메뉴1 메뉴2 메뉴
			</div>
			<!-- //hedaer -->
			<div id="body" class="col-xs-12">
				<div class="row">
					<div class="col-xs-9">
						메인배너영역
					</div>
					<div class="col-xs-3">
						로그인박스
					</div>
				</div>
			</div>

			<div id="footer" class="col-xs-12">
				푸터
			</div>

		</div>
		<!-- //row -->
	</div>
	<!-- //container -->





</body>
</html>
