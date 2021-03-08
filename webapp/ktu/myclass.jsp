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
			<div class="col-xs-12 middle">
				<div class="row">
					<c:import url="/ktu/myclass-aside.jsp"></c:import>
					<div class="col-xs-9 body">
						<!-- 내용 -->dddd
					</div>
				</div>
			</div>
			<!-- //body -->
			<div class="col-md-xs footer">푸터</div>
			<!-- //footer -->
		</div>
	</div>

</body>
</html>