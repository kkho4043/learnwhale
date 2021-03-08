<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div class="container-fluid">

		<c:import url="/ktu/header.jsp"></c:import>
		<!-- 헤더 -->
		<div class="row">
			<c:import url="/ktu/blog-aside.jsp"></c:import>
			<!-- 사이드 -->
			<div class="col-xs-10 body">
				내용
				<!-- 내용 -->
			</div>
		</div>
			<!-- //body -->
			<div class="col-md-xs footer">푸터</div>
			<!-- //footer -->
		
	</div>
</body>
</html>